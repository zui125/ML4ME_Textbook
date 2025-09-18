# Machine Learning for Mechanical Engineering

This is a textbook repository for my course notes for the ETHZ Machine Learning for Mechanical Engineering course.

## 🎓 For Students: Quick Setup

**New to Python and machine learning?** We've got you covered!

📖 **[STUDENT_SETUP.md](STUDENT_SETUP.md)** - Complete beginner-friendly setup guide

**Just 3 steps:**
1. Install Miniforge and VS Code
2. Clone this repository  
3. Run `setup.sh` (Mac/Linux) or `setup.bat` (Windows)

**That's it!** You'll have everything needed to run all the machine learning examples in this book.

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