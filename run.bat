@echo off
set PYTHON_EXE="C:\Users\thaku\AppData\Local\Programs\Python\Python311\python.exe"

if "%1"=="1" (
    %PYTHON_EXE% eye_detection_p1.py
) else if "%1"=="2" (
    %PYTHON_EXE% p2\eye_blinking_detection_p2.py
) else if "%1"=="3" (
    %PYTHON_EXE% p3\gaze_controlled_keyboard_p3.py
) else if "%1"=="4" (
    %PYTHON_EXE% p4\gaze_controlled_keyboard_p4.py
) else (
    echo Usage: run [1^|2^|3^|4]
    echo.
    echo Examples:
    echo   run 1  - Run Eye Detection Landmark Tracker
    echo   run 2  - Run Eye Blinking Detection
    echo   run 3  - Run Pupil Segmenter
    echo   run 4  - Run Gaze Direction Controller
)
