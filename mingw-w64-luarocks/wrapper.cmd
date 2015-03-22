@if exist "%~dp0\lua.exe" (
  "%~dp0\lua.exe" "%~dp0\@EXE@" %*
) else (
  lua.exe "%~dp0\@EXE@" %*
)
