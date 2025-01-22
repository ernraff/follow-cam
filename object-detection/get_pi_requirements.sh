#!/bin/bash

# Update and upgrade the system packages
echo "Updating and upgrading system packages..."
sudo apt-get update && sudo apt-get -y upgrade

# Install required packages for OpenCV
echo "Installing dependencies for OpenCV..."
sudo apt-get -y install libjpeg-dev libtiff5-dev libjasper-dev libpng-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -y install libxvidcore-dev libx264-dev
sudo apt-get -y install qt5-default libatlas-base-dev gfortran

# Install pip if not already installed
echo "Ensuring pip is installed..."
sudo apt-get -y install python3-pip
pip3 install --upgrade pip setuptools

# Install OpenCV (using a stable version)
echo "Installing OpenCV..."
pip3 install opencv-python==4.5.3.56 opencv-contrib-python==4.5.3.56

# Install TensorFlow Lite Runtime
echo "Installing TensorFlow Lite Runtime..."
version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')

if [ "$version" == "3.9" ]; then
  pip3 install https://github.com/google-coral/pycoral/releases/download/v2.5.0/tflite_runtime-2.5.0.post1-cp39-cp39-linux_armv7l.whl
elif [ "$version" == "3.8" ]; then
  pip3 install https://github.com/google-coral/pycoral/releases/download/v2.5.0/tflite_runtime-2.5.0.post1-cp38-cp38-linux_armv7l.whl
elif [ "$version" == "3.7" ]; then
  pip3 install https://github.com/google-coral/pycoral/releases/download/v2.5.0/tflite_runtime-2.5.0.post1-cp37-cp37m-linux_armv7l.whl
elif [ "$version" == "3.6" ]; then
  pip3 install https://github.com/google-coral/pycoral/releases/download/v2.5.0/tflite_runtime-2.5.0.post1-cp36-cp36m-linux_armv7l.whl
else
  echo "Python version $version not supported. Please use Python 3.6 to 3.9."
  exit 1
fi

# Verify installation
echo "Verifying installation..."
python3 -c "import cv2; import tflite_runtime.interpreter as tflite; print('OpenCV version:', cv2.__version__); print('TensorFlow Lite Runtime installed successfully.')"

echo "All dependencies have been installed successfully."
