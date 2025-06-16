# Machine Learning for Mechanical Engineering

This is a textbook repository for my course notes for the ETHZ Machine Learning for Mechanical Engineering course.

## Compiling the Book

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