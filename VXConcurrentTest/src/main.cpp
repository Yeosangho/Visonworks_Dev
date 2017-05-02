    #include <cmath>
    #include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    #include <NVXIO/Render.hpp>
    #include <NVX/nvx_opencv_interop.hpp>
    #include <opencv2/opencv.hpp>
#include <NVX/nvx.h>
#include <NVX/nvx_timer.hpp>

#include <NVXIO/Application.hpp>
#include <NVXIO/ConfigParser.hpp>
#include <NVXIO/FrameSource.hpp>
#include <NVXIO/SyncTimer.hpp>
#include <NVXIO/Utility.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/core/mat.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
    int main(int argc, char** argv)
    {

	cv::Mat mat = cv::imread("512kb.jpg");
        int width = mat.cols;
        int height = mat.rows;
        vx_context context = vxCreateContext();
        vx_image frame =  nvx_cv::createVXImageFromCVMat(context, mat);
	int a = 0;

	//vx_image frame = vxCreateImage(context, width, height, VX_DF_IMAGE_RGBX);
        vx_image gray1 = vxCreateImage(context, width, height, VX_DF_IMAGE_U8);
        vx_image gray2 = vxCreateImage(context, width, height, VX_DF_IMAGE_U8);       


        vx_graph graph1 = vxCreateGraph(context);
        vx_graph graph2 = vxCreateGraph(context);
        vx_node cvtNode1 = vxColorConvertNode(graph1, frame, gray1);
        vx_node cvtNode2 = vxColorConvertNode(graph2, frame, gray2);
	vxSetNodeTarget(cvtNode1, NVX_TARGET_GPU, NULL);
	vxSetNodeTarget(cvtNode2, NVX_TARGET_GPU, NULL);

	double timeSec;	

        for(int i=0; i<1000; i++)
        {
	    //const  int64 startWhole = cv::getTickCount();
            //printf("%d", i);
	    //const  int64 startGraph1 = cv::getTickCount();
            NVXIO_SAFE_CALL( vxScheduleGraph(graph1) );
	    NVXIO_SAFE_CALL( vxScheduleGraph(graph2) );
	    if(i%50 == 0){
	      NVXIO_SAFE_CALL( vxWaitGraph(graph2) );
              NVXIO_SAFE_CALL( vxWaitGraph(graph1) );
	    }

	  
	    //timeSec = (cv::getTickCount() - startGraph1) / cv::getTickFrequency();
            //std::cout << " Graph1 Time : " << timeSec << " sec" << std::endl;
	    //const  int64 startGraph2 = cv::getTickCount();
            //NVXIO_SAFE_CALL( vxProcessGraph(graph2) );
	    //timeSec = (cv::getTickCount() - startGraph2) / cv::getTickFrequency();
            //std::cout << " Graph2 Time : " << timeSec << " sec" << std::endl;

	    //timeSec = (cv::getTickCount() - startWhole) / cv::getTickFrequency();
            //std::cout << " Whole Time : " << timeSec << " sec" << std::endl;
        }

        vxReleaseNode(&cvtNode1);
        vxReleaseNode(&cvtNode2);
        vxReleaseImage(&frame);
        vxReleaseImage(&gray1);
        vxReleaseImage(&gray2);


        return nvxio::Application::APP_EXIT_CODE_SUCCESS;
    }
