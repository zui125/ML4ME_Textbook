@echo off
REM Student Auto-Setup Script for ML4ME Textbook
REM This script sets up everything needed to run the machine learning examples

echo Setting up ML4ME Textbook Environment...
echo ==============================================

REM Check if conda is available
conda --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Conda not found. Please install Miniforge first:
    echo    https://github.com/conda-forge/miniforge
    echo    Then restart your command prompt and run this script again.
    pause
    exit /b 1
)

echo SUCCESS: Conda found

echo Detected OS: Windows

REM Check for NVIDIA GPU
nvidia-smi >nul 2>&1
if %errorlevel% equ 0 (
    echo NVIDIA GPU detected via nvidia-smi
    set HAS_NVIDIA_GPU=true
) else (
    REM Fallback: check for NVIDIA in device manager
    wmic path win32_VideoController get name | findstr /i nvidia >nul 2>&1
    if %errorlevel% equ 0 (
        echo NVIDIA GPU detected via device manager
        set HAS_NVIDIA_GPU=true
    ) else (
        echo No NVIDIA GPU detected, using CPU-only PyTorch
        set HAS_NVIDIA_GPU=false
    )
)

REM Choose environment file based on GPU availability
if "%HAS_NVIDIA_GPU%"=="true" (
    echo Creating conda environment with CUDA support...
    conda env create -f environment-gpu.yml
) else (
    echo Creating conda environment...
    conda env create -f environment.yml
)

echo Activating environment...
call conda activate ml4me-student

echo Installing PyTorch...
if "%HAS_NVIDIA_GPU%"=="true" (
    echo    Installing PyTorch with CUDA support...
    pip install torch==2.7.1 torchvision==0.22.1 torchaudio==2.7.1 --index-url https://download.pytorch.org/whl/cu128
) else (
    echo    Installing PyTorch CPU-only version...
    pip install torch==2.7.1 torchvision==0.22.1 torchaudio==2.7.1 --index-url https://download.pytorch.org/whl/cpu
)

echo Installing ML and Data Science libraries...
pip install .

echo Testing the setup...
python -c "import torch; print('SUCCESS: PyTorch', torch.__version__, 'installed successfully')"
python -c "import numpy; print('SUCCESS: NumPy', numpy.__version__, 'installed successfully')"
python -c "import matplotlib; print('SUCCESS: Matplotlib', matplotlib.__version__, 'installed successfully')"
python -c "import sklearn; print('SUCCESS: Scikit-learn', sklearn.__version__, 'installed successfully')"

echo.
echo Setup complete!
echo ==============================================
echo.
echo Next steps:
echo 1. Activate the environment: conda activate ml4me-student
echo 2. Start Jupyter: jupyter notebook
echo 3. Open any notebook from the 'notebooks' folder
echo.
echo Useful commands:
echo   conda activate ml4me-student    # Activate environment
echo   jupyter notebook                # Start Jupyter
echo   python notebooks/example.py     # Run Python scripts
echo.
echo Happy learning!
pause
