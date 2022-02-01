@echo off
:: 第一引数に１を指定しないと起動しない
if "%1" neq "1" (
    @echo on
    exit /b
)

:: 日付をいい感じ(yyyymmdd_hhmmss)に取り出し
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time00=%time: =0%
set hh=%time00:~0,2%
set mn=%time00:~3,2%
set ss=%time00:~6,2%
set filename=%yyyy%%mm%%dd%_%hh%%mn%%ss%

@echo on
hugo new posts/%filename%.md
mkdir -p static\images\%filename%
