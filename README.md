# Object Detection and Camera Tracking Project

This project is a work-in-progress implementation of an object detection system using OpenCV and YOLOv11 from Ultralytics. The current functionality includes real-time object detection with bounding boxes and class names displayed on a video feed. Future iterations will incorporate robotics for camera panning and a full-stack application for video storage and user interface.

---

## Features

- **Real-time Object Detection**: Detects objects and displays bounding boxes with class names.
- **YOLOv8 Integration**: Leverages the Ultralytics YOLOv8 model for high-performance detection.
- **Video Feed Processing**: Processes video feed for dynamic object recognition.

---

## Next Steps

1. **Deploy on Raspberry Pi**:
   - Optimize the program for the Raspberry Pi 3 environment.
   - Use Raspberry Pi peripherals for video capture and display.

2. **Incorporate Robotics**:
   - Implement camera panning functionality to follow moving objects or people within the video feed.

3. **Full-Stack Application**:
   - **Back End**: Store videos of detected objects or people in a database.
   - **Front End**: Develop a user interface to view saved videos by timestamp.

---

## Technologies Used

- **Programming Language**: Python
- **Libraries**:
  - [OpenCV](https://opencv.org/) for video processing and bounding box rendering.
  - [Ultralytics YOLOv8](https://github.com/ultralytics/yolov8) for object detection.
- **Hardware**:
  - Raspberry Pi 3 (planned for deployment).

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ernraff/follow-cam.git
   cd follow-cam

2. Install required Python packages:
   ```bash
   pip install requirements.txt

3.  Run the program
    ```bash
    python main.py
   
