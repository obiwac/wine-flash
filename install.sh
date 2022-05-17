#!/bin/sh
set -e

archive=fp_32.0.0.363_archive.zip

export WINEARCH=win32 # win64 fails each time

W_DRIVE_C=$WINEPREFIX/drive_c
W_WINDIR_UNIX=$W_DRIVE_C/windows

W_SYSTEM_DLLS=$W_WINDIR_UNIX/system32
# W_SYSTEM_DLLS=$W_WINDIR_UNIX/syswow64

# installer

wine components/*_win.exe

# standalone player

mkdir -p $W_SYSTEM_DLLS/Macromed/Flash
cp flash_win_sa.exe $W_SYSTEM_DLLS/Macromed/Flash
