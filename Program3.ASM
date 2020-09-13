include 'win64ax.inc'

.code

  start:

        invoke MessageBox, HWND_DESKTOP, "Do you know how to write this program?", invoke GetCommandLine, MB_YESNO

        .if eax = IDYES
                invoke MessageBox, HWND_DESKTOP, "You're cool!", "Great!", MB_OK
        .else
                invoke MessageBox, HWND_DESKTOP, "You have to practice assembler more!", "Pity!", MB_OK
        .endif

        invoke  ExitProcess,0

.end start