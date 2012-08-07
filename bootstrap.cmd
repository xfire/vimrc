@echo off

if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
if not exist "%HOME%" @set HOME=%USERPROFILE%

set BASE_DIR=%HOME%\.vim

call git clone --depth 1 --branch master https://github.com/xfire/vimrc.git %BASE_DIR%
call rmdir /S /Q %BASE_DIR%\.git

call mkdir %BASE_DIR%\bundle
call mklink %HOME%\.vimrc %BASE_DIR%\vimrc
call mklink %HOME%\_vimrc %BASE_DIR%\vimrc

call git clone http://github.com/gmarik/vundle.git %BASE_DIR%\bundle\vundle

vim +BundleInstall +qall
