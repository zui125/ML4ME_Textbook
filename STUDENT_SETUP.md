# 🎓 Student Setup Guide - Machine Learning for Mechanical Engineering

> **Welcome!** This guide will get you from zero to running machine learning models in just a few steps. No prior Python experience needed!

---

## 🚀 Quick Start (3 Steps)

### Step 1: Install Prerequisites
**You need these 2 things:**

1. **Miniforge** (Python package manager)
   - **macOS/Linux:** Download from [miniforge.io](https://github.com/conda-forge/miniforge)
   - **Windows:** Download from [miniforge.io](https://github.com/conda-forge/miniforge)
   - Install it (just click through the installer)

2. **VS Code** (code editor)
   - Download from [code.visualstudio.com](https://code.visualstudio.com/)
   - Install it (just click through the installer)

### Step 2: Get This Book
**Copy this book to your computer:**

1. **Open VS Code**
2. **Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)**
3. **Type "Git: Clone" and press Enter**
4. **Paste this URL:** `https://github.com/IDEALLab/ML4ME_Textbook.git`
5. **Choose a folder** (like Desktop or Documents)
6. **Wait for it to download**

### Step 3: Run the Auto-Setup
**This installs everything automatically:**

1. **Open Terminal/Command Prompt:**
   - **Windows:** Press `Win+R`, type `cmd`, press Enter
   - **Mac:** Press `Cmd+Space`, type "Terminal", press Enter
   - **Linux:** Press `Ctrl+Alt+T`

2. **Navigate to the book folder:**
   ```bash
   cd ML4ME_Textbook
   ```

3. **Run the setup script:**
   - **Windows:** Double-click `setup.bat` OR type `setup.bat` in terminal
   - **Mac/Linux:** Type `./setup.sh` in terminal

4. **Wait 5-10 minutes** (it's downloading lots of software)

5. **You're done!** 🎉

---

## 🎯 What Just Happened?

The setup script automatically:
- ✅ Created a Python environment called `ml4me-student`
- ✅ Installed PyTorch (for deep learning)
- ✅ Installed NumPy, Matplotlib, Pandas (for data science)
- ✅ Installed Scikit-learn (for machine learning)
- ✅ Installed Jupyter (for interactive notebooks)

---

## 🚀 How to Start Learning

### Option 1: Read the Book Online
1. **Open VS Code**
2. **Open the book folder**
3. **Double-click `index.qmd`**
4. **Click "Preview"** in the top-right corner

### Option 2: Run Interactive Notebooks
1. **Open Terminal/Command Prompt**
2. **Type these commands:**
   ```bash
   conda activate ml4me-student
   jupyter notebook
   ```
3. **Your browser opens automatically**
4. **Click on any `.ipynb` file in the `notebooks` folder**

---

## 🔧 Daily Workflow

**Every time you want to work on this book:**

1. **Open Terminal/Command Prompt**
2. **Navigate to the book:**
   ```bash
   cd ML4ME_Textbook
   ```
3. **Activate the environment:**
   ```bash
   conda activate ml4me-student
   ```
4. **Start Jupyter:**
   ```bash
   jupyter notebook
   ```

**When you're done:**
- **Close the browser tab**
- **Press `Ctrl+C` twice in the terminal**
- **Type `conda deactivate`**

---

## 🆘 Troubleshooting

### "Conda not found"
- **Solution:** Install Miniforge from [miniforge.io](https://github.com/conda-forge/miniforge)
- **Restart your terminal** after installing

### "Permission denied" (Mac/Linux)
- **Solution:** Type `chmod +x setup.sh` first, then `./setup.sh`

### "Python not found"
- **Solution:** Make sure you activated the environment: `conda activate ml4me-student`

### Jupyter won't start
- **Solution:** Try `jupyter lab` instead of `jupyter notebook`

### VS Code can't find Python
- **Solution:** 
  1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
  2. Type "Python: Select Interpreter"
  3. Choose the one with `ml4me-student`

---

## 📚 What's in This Book?

### 📖 **Interactive Textbook**
- **Part 1:** Foundational Skills (evaluating models, taking derivatives)
- **Part 2:** Model-Specific Approaches (neural networks, probabilistic models)
- **Part 3:** Engineering-Specific Considerations

### 🧪 **Interactive Notebooks**
- **California Housing Visualization** - Learn data visualization
- **Linear Regression** - Understand basic ML
- **PyTorch Autograd** - Learn automatic differentiation
- **Polynomial Regression** - Explore model complexity
- **Cross Validation** - Learn proper model evaluation

### 📝 **Problem Sets**
- **PS1:** Hands-on exercises to practice what you learn

---

## 🎓 Learning Path

### **Week 1: Basics**
1. **Read:** Introduction and Part 1 overview
2. **Do:** California Housing Visualization notebook
3. **Practice:** PS1 Part 1

### **Week 2: Linear Models**
1. **Read:** Linear regression chapters
2. **Do:** Linear models and cross-validation notebooks
3. **Practice:** PS1 Part 2

### **Week 3: Advanced Topics**
1. **Read:** PyTorch and automatic differentiation
2. **Do:** PyTorch notebook
3. **Practice:** PS1 Part 3

### **Week 4: Deep Dive**
1. **Read:** Part 2 chapters
2. **Do:** Advanced notebooks
3. **Explore:** Your own projects!

---

## 🔗 Useful Commands Cheat Sheet

| What you want to do | Command |
|---------------------|---------|
| Activate environment | `conda activate ml4me-student` |
| Deactivate environment | `conda deactivate` |
| Start Jupyter | `jupyter notebook` |
| Start Jupyter Lab | `jupyter lab` |
| Check Python version | `python --version` |
| List installed packages | `pip list` |
| Update a package | `pip install --upgrade package_name` |

---

## 🆘 Getting Help

### **If you're stuck:**
1. **Check this guide first** - most problems are covered here
2. **Ask your classmates** - they might have the same issue
3. **Ask your instructor** - they're here to help!

### **Common Issues:**
- **"Module not found"** → Make sure environment is activated
- **"Permission denied"** → Try running terminal as administrator (Windows)
- **"Port already in use"** → Try `jupyter notebook --port 8889`

---

## 🎉 You're Ready!

**Congratulations!** You now have a complete machine learning environment set up. You can:

- ✅ Read the interactive textbook
- ✅ Run all the example notebooks
- ✅ Complete the problem sets
- ✅ Start your own ML projects

**Happy learning!** 🚀

---

*This setup guide was created to make machine learning accessible to everyone, regardless of their programming background. If you have suggestions for improvements, please let us know!*
