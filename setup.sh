#!/bin/bash
# Student Auto-Setup Script for ML4ME Textbook
# This script sets up everything needed to run the machine learning examples

set -e  # Exit on any error

echo "🚀 Setting up ML4ME Textbook Environment..."
echo "=============================================="

# Check if conda is available
if ! command -v conda &> /dev/null; then
    echo "❌ Conda not found. Please install Miniforge first:"
    echo "   https://github.com/conda-forge/miniforge"
    echo "   Then restart your terminal and run this script again."
    exit 1
fi

echo "✅ Conda found"

# Detect OS
OS="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    OS="windows"
fi

echo "🖥️  Detected OS: $OS"

echo "🫙 Creating conda environment..."
conda env create -f environment.yml

echo "🔄 Activating environment..."
eval "$(conda shell.bash hook)"
conda activate ml4me-student

echo "📦 Installing PyTorch..."
if [[ "$OS" == "macos" ]]; then
    echo "   Installing PyTorch for macOS..."
    pip install torch==2.7.1 torchvision==0.22.1 torchaudio==2.7.1
elif [[ "$OS" == "linux" ]] || [[ "$OS" == "windows" ]]; then
    echo "   Installing PyTorch with CUDA support for $OS..."
    pip install torch==2.7.1 torchvision==0.22.1 torchaudio==2.7.1 --index-url https://download.pytorch.org/whl/cu128
else
    echo "   Installing PyTorch (default)..."
    pip install torch==2.7.1 torchvision==0.22.1 torchaudio==2.7.1
fi

echo "📚 Installing ML and Data Science libraries..."
pip install .

echo "🧪 Testing the setup..."
python -c "import torch; print(f'✅ PyTorch {torch.__version__} installed successfully')"
python -c "import numpy; print(f'✅ NumPy {numpy.__version__} installed successfully')"
python -c "import matplotlib; print(f'✅ Matplotlib {matplotlib.__version__} installed successfully')"
python -c "import sklearn; print(f'✅ Scikit-learn {sklearn.__version__} installed successfully')"

echo ""
echo "🎉 Setup complete!"
echo "=============================================="
echo ""
echo "Next steps:"
echo "1. Activate the environment: conda activate ml4me-student"
echo "2. Start Jupyter: jupyter notebook"
echo "3. Open any notebook from the 'notebooks' folder"
echo ""
echo "Useful commands:"
echo "  conda activate ml4me-student    # Activate environment"
echo "  jupyter notebook                # Start Jupyter"
echo "  python notebooks/example.py     # Run Python scripts"
echo ""
echo "Happy learning! 🎓"
