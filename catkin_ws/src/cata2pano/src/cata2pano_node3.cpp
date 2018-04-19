#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include "ocam_functions.h"


// Class for subscribing, modifying and publishing the image topics
class SubscribeAndPublish
{
private:
  ros::NodeHandle n_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber sub_;
  image_transport::Publisher pub_;
  IplImage* dst_pan_;
  CvMat* mapx_pan_;
  CvMat* mapy_pan_;

public:
  SubscribeAndPublish() : it_(n_)
  {
    ROS_INFO("cata2pano constructor started");
    
    // Initialize stuff in this constructor
    struct ocam_model o_cata; // parameter values
    char filename[] = "/home/atv/atv-project-2017/catkin_ws/src/cata2pano/src/calib_results_catadioptric.txt";
    get_ocam_model(&o_cata, filename); // parameter file

    CvSize size_pan_image = cvSize(1200,400); // size of the panoramic image
    dst_pan_ = cvCreateImage(size_pan_image, 8, 3); // create panoramic image
    mapx_pan_   = cvCreateMat(dst_pan_->height, dst_pan_->width, CV_32FC1);
    mapy_pan_   = cvCreateMat(dst_pan_->height, dst_pan_->width, CV_32FC1);
    float Rmax = 470; // maximum radius to be converted to panoramic
    float Rmin = 20; // minimum radius to be converted to panoramic
    ROS_INFO("xc: %f", o_cata.xc);
    ROS_INFO("yc: %f", o_cata.yc);
    create_panoramic_undistortion_LUT ( mapx_pan_, mapy_pan_, Rmin, Rmax, o_cata.xc, o_cata.yc);

    // Topic you want to publish
    //pub_ = n_.advertise("/basler/pylon_camera_node/panorama", 1);
    pub_ = it_.advertise("/basler/pylon_camera_node/panorama", 1);

    // Topic you want to subscribe
    sub_ = it_.subscribe("/basler/pylon_camera_node/image_raw", 1, &SubscribeAndPublish::callback, this);
    
    ROS_INFO("cata2pano constructor finished");
  }

  void callback(const sensor_msgs::ImageConstPtr& cata_image_ptr)
  {
    ROS_INFO("encoding: %s", cata_image_ptr->encoding.c_str());
    ROS_INFO("cata_image_ptr width: %d", cata_image_ptr->width);
    ROS_INFO("cata_image_ptr height: %d", cata_image_ptr->height);

    ROS_INFO("cata2pano started callback");
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
      ROS_INFO("cata2pano trying cv_bridge::toCvCopy");
      cv_ptr = cv_bridge::toCvCopy(cata_image_ptr, "bgr8");
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    //IplImage *src = cvLoadImage("./test_catadioptric.jpg"); // to be fixed so that the input is image from the basler /image_raw stream
    IplImage tmp = cv_ptr->image;
    ROS_INFO("tmp width: %d", tmp.width);
    ROS_INFO("tmp height: %d", tmp.height);
    ROS_INFO("cata2pano starting cvRemap");
    /* --------------------------------------------------------------------  */
    /* This is the magical cata2pano function                                */
    /* --------------------------------------------------------------------  */
    cvRemap(&tmp, dst_pan_, mapx_pan_, mapy_pan_, CV_INTER_LINEAR+CV_WARP_FILL_OUTLIERS, cvScalarAll(0)); 
    
    ROS_INFO("cata2pano finished cvRemap");
    
    // Convert dst_pan_ back to cv::Mat
    // cv::Mat m = cv::cvarrToMat(dst_pan_);
    //cv_ptr->image = cv::cvarrToMat(dst_pan_);
    pub_.publish(cv_ptr->toImageMsg());
    //m = cv::Mat();
    //m.release();
    //m.deallocate();
  }
};
// End of class

int main(int argc, char **argv)
{
  ROS_INFO("cata2pano initiating main");
  ros::init(argc, argv, "image_subscribe_and_convert_and_publish");
  ROS_INFO("cata2pano creating cata2pano object");
  SubscribeAndPublish cata2pano_object;
  ROS_INFO("cata2pano finished creating cata2pano object");
  ros::spin();
  cv::destroyWindow("view");
}
