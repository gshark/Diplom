@echo off
for %%i in (*.tex) do (
    xelatex %%~ni
)
            
