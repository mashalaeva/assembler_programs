format PE GUI
include 'win32a.inc'
 
;       invoke  MessageBox,0,sHello,sTitle,0
 
        push    1
        push    sTitle
        push    sHello
        push    0
        call    [MessageBoxA]
 
        invoke  ExitProcess,0
 
sHello  db 'My name is Marina and this is my first program!',0
sTitle  db 'Hello!',0
 
include 'API\kernel32.inc'
data import
        library kernel32,'KERNEL32.DLL',\
                user,'USER32.DLL'
        import  user,\
                MessageBoxA,'MessageBoxA'
end data