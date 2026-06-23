# Hands-Free Reading System

A computer vision-based system that enables hands-free interaction through eye and gaze tracking. This project detects facial features, eye movements, and blinking patterns to provide keyboard control without using hands.

## Features

- **Eye Detection (P1)**: Real-time detection of eye landmarks and features using dlib
- **Eye Blinking Detection (P2)**: Detects eye blinks to trigger actions
- **Gaze-Controlled Keyboard (P3 & P4)**: Maps gaze direction to keyboard input for hands-free control
- **Face Detection**: Identifies faces and extracts eye regions from video stream
- **Real-time Processing**: Live video stream processing using OpenCV

## Prerequisites

- Python 3.7+
- Webcam for video input
- dlib trained model (`shape_predictor_68_face_landmarks.dat`)

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Sunikhilthakur/Hands-free-reading-system.git
   cd Hands-free-reading-system
   ```

2. **Create a virtual environment:**
   ```bash
   python -m venv venv
   ```

3. **Activate the virtual environment:**
   - On Windows:
     ```bash
     venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```

4. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

## Project Structure

```
Hands-free-reading-system/
├── eye_detection_p1.py              # Phase 1: Basic eye detection
├── p2/
│   └── eye_blinking_detection_p2.py # Phase 2: Eye blink detection
├── p3/
│   └── gaze_controlled_keyboard_p3.py  # Phase 3: Gaze to keyboard control
├── p4/
│   └── gaze_controlled_keyboard_p4.py  # Phase 4: Advanced gaze control
├── GazeTrack/
│   └── GazeTracking/                # GazeTracking library
├── shape_predictor_68_face_landmarks.dat  # dlib face landmark model
├── landmarks_points.png             # Reference image for landmarks
├── requirements.txt                 # Python dependencies
└── README.md
```

## Usage

### Phase 1: Eye Detection
```bash
python eye_detection_p1.py
```
Displays eye landmarks detected from the webcam feed in real-time.

### Phase 2: Eye Blinking Detection
```bash
python p2/eye_blinking_detection_p2.py
```
Detects and tracks eye blinks to trigger events.

### Phase 3: Gaze-Controlled Keyboard
```bash
python p3/gaze_controlled_keyboard_p3.py
```
Maps gaze direction to keyboard input for text input or navigation.

### Phase 4: Advanced Gaze Control
```bash
python p4/gaze_controlled_keyboard_p4.py
```
Enhanced gaze tracking with improved accuracy and responsiveness.

## Key Concepts

- **Face Landmarks**: Uses dlib's 68-point face landmark detector
- **Eye Region Detection**: Extracts regions around the eyes
- **Gaze Estimation**: Calculates gaze direction from eye position
- **Real-time Processing**: Processes video frames at ~30 FPS

## Dependencies

- **opencv-python**: Computer vision operations
- **numpy**: Numerical computations
- **dlib**: Face and landmark detection
- **cmake**: Build tool for dlib

See `requirements.txt` for complete list.

## Hardware Requirements

- Minimum: Dual-core processor, 4GB RAM
- Recommended: Quad-core processor, 8GB RAM, USB 3.0 webcam
- Webcam with minimum 720p resolution for best results

## Troubleshooting

1. **"shape_predictor_68_face_landmarks.dat not found"**
   - Ensure the model file is in the project root directory

2. **Slow performance**
   - Lower the video resolution in the script
   - Check CPU usage; ensure no other heavy processes are running

3. **Inaccurate gaze detection**
   - Improve lighting conditions
   - Position webcam at eye level
   - Ensure good camera focus

## Future Improvements

- Multi-face tracking support
- Calibration for improved accuracy
- GUI interface for easier configuration
- Mouse control integration
- Support for different lighting conditions

## License

This project is open source and available under the MIT License.

## Author

Sunikhil Thakur

## Acknowledgments

- dlib library for robust face detection
- OpenCV community for computer vision tools
- GazeTracking library for gaze estimation
