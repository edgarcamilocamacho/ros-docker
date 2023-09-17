#!/bin/python3

import os
import argparse

from tools import print_docker_command
from constants import *


os.chdir(os.path.dirname(os.path.realpath(__file__)))

parser = argparse.ArgumentParser(
        prog='./run',
        description='Creates a ROS container',
    )

parser.add_argument('-v', '--verbose', action='store_true')
parser.add_argument('-d', '--distro', default=DEFAULT_ROS_DISTRO)
parser.add_argument('-n', '--name')

args = parser.parse_args()

verbose = args.verbose
rosdistro = args.distro
if args.name is None:
    container_name = CONTAINER_NAME.substitute(rosdistro=rosdistro)
else:
    container_name = args.name


rosdistro = DEFAULT_ROS_DISTRO

command = [
        'docker',
        'exec',
        '-it',
        CONTAINER_NAME.substitute(rosdistro=rosdistro),
        'bash',
    ]

if args.verbose:
    print_docker_command(command)

os.system(' '.join(command))
