include 'include/win32ax.inc'

.code

main:

invoke MessageBox,NULL,'Hello, World!','Message box',MB_OK
invoke ExitProcess,0

.end main