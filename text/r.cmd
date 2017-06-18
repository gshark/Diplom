@echo off
for %%i in (*.tex) do (
    echo %%~ni
    xelatex %%~ni
    biber    %%~ni
    xelatex %%~ni
    xelatex %%~ni
)
            
rem pdflatex analysis-advanced.tex
rem pdflatex analysis-advanced.tex
rem pdflatex analysis-basic.tex
rem pdflatex analysis-basic.tex
