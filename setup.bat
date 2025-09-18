@echo off
REM Student Auto-Setup Script for ML4ME Textbook
REM This script sets up everything needed to run the machine learning examples

echo 🚀 Setting up ML4ME Textbook Environment...
echo ==============================================

REM Check if conda is available
conda --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Conda not found. Please install Miniforge first:
    echo    https://github.com/conda-forge/miniforge
    echo    Then restart your command prompt and run this script again.
    pause
    exit /b 1
)

echo ✅ Conda found

echo 🖥️  Detected OS: Windows

echo 🫙 Creating conda environment...
conda env create -f environment.yml

echo 🔄 Activating environment...
call conda activate ml4me-student

echo 📦 Installing PyTorch with CUDA support...
pip install torch==2.7.1 torchvision==0.22.1 torchaudio==2.7.1 --index-url https://download.pytorch.org/whl/cu128

echo 📚 Installing ML and Data Science libraries...
pip install .

echo 🧪 Testing the setup...
python -c "import torch; print(f'✅ PyTorch {torch.__version__} installed successfully')"
python -c "import numpy; print(f'✅ NumPy {numpy.__version__} installed successfully')"
python -c "import matplotlib; print(f'✅ Matplotlib {matplotlib.__version__} installed successfully')"
python -c "import sklearn; print(f'✅ Scikit-learn {sklearn.__version__} installed successfully')"

echo.
echo 🎉 Setup complete!
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
echo Happy learning! 🎓
pause
