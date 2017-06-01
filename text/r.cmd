@echo off
for %%i in (*.tex) do (
    echo %%~ni
    pdflatex %%~ni
    biber    %%~ni
    pdflatex %%~ni
    pdflatex %%~ni
)
            
rem pdflatex analysis-advanced.tex
rem pdflatex analysis-advanced.tex
rem pdflatex analysis-basic.tex
rem pdflatex analysis-basic.tex
