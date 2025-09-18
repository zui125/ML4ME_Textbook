# Machine Learning for Mechanical Engineering

This is a textbook repository for the ETHZ Machine Learning for Mechanical Engineering course.

---

## For Students: Setup Guide

This guide provides step-by-step instructions to set up the machine learning environment required for this course. No prior Python experience is required.

### Quick Start (4 Steps)

#### Step 1: Create GitHub Account
**You need a GitHub account to download this book:**

1. **Go to [github.com](https://github.com)**
2. **Click "Sign up"**
3. **Create your account** (use your ETH email if you have one)
4. **Verify your email**

#### Step 2: Install Prerequisites
**You need these 2 things:**

1. **Miniforge** (Python package manager)
   - **macOS/Linux:** Download from [miniforge.io](https://github.com/conda-forge/miniforge)
   - **Windows:** Download from [miniforge.io](https://github.com/conda-forge/miniforge)
   - Install it (just click through the installer)

2. **VS Code** (code editor)
   - Download from [code.visualstudio.com](https://code.visualstudio.com/)
   - Install it (just click through the installer)

#### Step 3: Get This Book
**Copy this book to your computer:**

1. **Open VS Code**
2. **Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)**
3. **Type "Git: Clone" and press Enter**
4. **Paste this URL:** `https://github.com/IDEALLab/ML4ME_Textbook.git`
5. **Choose a folder** (like Desktop or Documents)
6. **Wait for it to download**

#### Step 4: Run the Auto-Setup
**This installs everything automatically:**

1. **Open Terminal/Command Prompt:**
   - **Windows:** Open "Miniforge Prompt" from Start Menu (NOT regular Command Prompt!)
   - **Mac:** Press `Cmd+Space`, type "Terminal", press Enter
   - **Linux:** Press `Ctrl+Alt+T`

2. **Navigate to the book folder:**
   ```bash
   cd ML4ME_Textbook
   ```

3. **Run the setup script:**
   - **Windows:** Type `setup.bat` in Miniforge Prompt
   - **Mac/Linux:** Type `./setup.sh` in terminal

4. **Wait 5-10 minutes** (the script downloads and installs required software)

5. **Setup complete**

### What the Setup Script Does

The setup script automatically:
- Created a Python environment called `ml4me-student`
- Installed PyTorch (for deep learning) with proper CUDA support
- Installed all ML libraries from the project dependencies (NumPy, Matplotlib, Pandas, Scikit-learn, Jupyter, etc.)
- Set up everything needed to run the interactive notebooks

### How to Start Learning

#### Option 1: Run Interactive Notebooks in VS Code (Recommended)
VS Code provides an integrated development environment with excellent Jupyter support and is the recommended approach for this course.

1. **Open VS Code**
2. **Open the book folder**
3. **Click on any `.ipynb` file in the `notebooks` folder**
4. **VS Code will ask you to select a kernel - choose "ml4me-student"**
5. **Start coding!** The notebook will run directly in VS Code

**Advantages of VS Code for ML development:**
- **Integrated experience** - no switching between browser and terminal
- **Smart autocomplete** and IntelliSense for Python
- **Built-in debugging** tools for troubleshooting
- **Git integration** for version control
- **Extension ecosystem** for ML/AI development
- **Integrated terminal** for running commands

#### Option 2: Read the Book Online
1. **Open VS Code**
2. **Open the book folder**
3. **Double-click `index.qmd`**
4. **Click "Preview"** in the top-right corner


### Daily Workflow

**Every time you want to work on this book:**

#### VS Code Workflow (Recommended):
1. **Open VS Code**
2. **Open the book folder** (File → Open Folder)
3. **Click on any `.ipynb` file** in the `notebooks` folder
4. **Select "ml4me-student" kernel** when prompted
5. **Start coding!** Everything runs in VS Code

**When you're done:**
- Just close VS Code or the notebook file - that's it!


### Troubleshooting

#### "Conda not found"
- **Solution:** Install Miniforge from [miniforge.io](https://github.com/conda-forge/miniforge)
- **Restart your terminal** after installing

#### "Permission denied" (Mac/Linux)
- **Solution:** Type `chmod +x setup.sh` first, then `./setup.sh`

#### "Python not found"
- **Solution:** Make sure you activated the environment: `conda activate ml4me-student`


#### VS Code can't find Python
- **Solution:** 
  1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
  2. Type "Python: Select Interpreter"
  3. Choose the one with `ml4me-student`

#### VS Code can't find the conda kernel
- **Solution:**
  1. Open a `.ipynb` file in VS Code
  2. Click on the kernel name in the top-right corner
  3. Select "ml4me-student" from the list
  4. If not listed, select "Select Another Kernel" → "Python Environments" → "ml4me-student"

#### Windows: "conda command not found" in regular Command Prompt
- **Solution:** Always use "Miniforge Prompt" from Start Menu, NOT regular Command Prompt

#### GitHub: "Authentication failed" when cloning
- **Solution:** Make sure you created a GitHub account and verified your email

### Course Content

#### Interactive Textbook
- **Part 1:** Foundational Skills (evaluating models, taking derivatives)
- **Part 2:** Model-Specific Approaches (neural networks, probabilistic models)
- **Part 3:** Engineering-Specific Considerations

#### Interactive Notebooks
- **California Housing Visualization** - Data visualization fundamentals
- **Linear Regression** - Introduction to machine learning
- **PyTorch Autograd** - Automatic differentiation
- **Polynomial Regression** - Model complexity analysis
- **Cross Validation** - Model evaluation techniques

#### Problem Sets
- **PS1:** Hands-on exercises to practice course concepts

### Suggested Learning Path

#### Week 1: Fundamentals
1. **Read:** Introduction and Part 1 overview
2. **Complete:** California Housing Visualization notebook
3. **Practice:** PS1 Part 1

#### Week 2: Linear Models
1. **Read:** Linear regression chapters
2. **Complete:** Linear models and cross-validation notebooks
3. **Practice:** PS1 Part 2

#### Week 3: Advanced Topics
1. **Read:** PyTorch and automatic differentiation
2. **Complete:** PyTorch notebook
3. **Practice:** PS1 Part 3

#### Week 4: Advanced Applications
1. **Read:** Part 2 chapters
2. **Complete:** Advanced notebooks
3. **Explore:** Independent projects

### Useful Commands

| What you want to do | Command |
|---------------------|---------|
| Activate environment | `conda activate ml4me-student` |
| Deactivate environment | `conda deactivate` |
| Check Python version | `python --version` |
| List installed packages | `pip list` |
| Update a package | `pip install --upgrade package_name` |

### Getting Help

#### If you encounter issues:
1. **Check this guide first** - most common problems are covered here
2. **Ask your classmates** - they may have encountered the same issue
3. **Contact your instructor** for additional support

#### Common Issues:
- **"Module not found"** → Make sure you selected the "ml4me-student" kernel in VS Code

---

## For Instructors: Compiling the Book

I am using [Quarto](https://quarto.org/) for this book, and you can render the book using the following steps:

1. Install [Quarto](https://quarto.org/docs/get-started/).
2. Clone this repository.
3. Preview the book via the command line (allows you to edit the book and see changes live):
```bash
quarto preview
```
4. Render the book via the command line (allows you to compile the book into HTML in `_book`):
```bash
quarto render
```
5. If you want to render the book into PDF (will be placed in the `_book` folder), you can use:
```bash
quarto render --to pdf
```

---

## Setup Complete

You now have a complete machine learning environment set up. You can:

- Read the interactive textbook
- Run all the example notebooks
- Complete the problem sets
- Start your own ML projects

---

*This setup guide was created to make machine learning accessible to everyone, regardless of their programming background. If you have suggestions for improvements, please let us know!*