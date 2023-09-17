from string import Template

BASE_IMAGE_NAME = Template('osrf/ros:${rosdistro}-desktop')
CONTAINER_NAME = Template('ros_${rosdistro}')

DEFAULT_ROS_DISTRO = 'humble'
