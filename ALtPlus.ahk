;=====================================================================o
;                   Gan Chuanli's AHK Script                         | 
;                      LAlt Enhancement                           |
;---------------------------------------------------------------------o
;Description:                                                         |
;    This Script is wrote by Gan Chuanli via AutoHotKey Script. It   |
; Provieds an enhancement towards the "Useless Key" LAlt, and     |
; turns LAlt into an useful function Key just like Ctrl and Alt   |
; by combining LAlt with almost all other keys in the keyboard.   |
;                                                                     |
;Summary:                                                             |
;o----------------------o---------------------------------------------o
;|LAlt;             | {ESC}  Especially Convient for vim user     |
;|CaspLock + `          | {LAlt}LAlt Switcher as a Substituent|
;|LAlt + hjklwb     | Vim-Style Cursor Mover                      |
;|CaspLock + uiop       | Convient Home/End PageUp/PageDn             |
;|CaspLock + nm,.       | Convient Delete Controller                  |
;|LAlt + zxcvay     | Windows-Style Editor                        |
;|LAlt + Direction  | Mouse Move                                  |
;|LAlt + Enter      | Mouse Click                                 |
;|CaspLock + {F1}~{F6}  | Media Volume Controller                     |
;|LAlt + qs         | Windows & Tags Control                      |
;|LAlt + ;'[]       | Convient Key Mapping                        |
;|CaspLock + dfert      | Frequently Used Programs (Self Defined)     |
;|CaspLock + 123456     | Dev-Hotkey for Visual Studio (Self Defined) |
;|LAlt + 67890-=    | Shifter as Shift                            |
;-----------------------o---------------------------------------------o
;|Use it whatever and wherever you like. Hope it help                 |
;=====================================================================o


;=====================================================================o
;                       LAlt Initializer                         ;|
;---------------------------------------------------------------------o

SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o
;LWin Up::return
        ; 这样写的话 LWin （左边的 Win 键）就完全废掉了。

*PrintScreen::Send {Click Middle down}
*PrintScreen Up::Send {Click Middle up}

;==选中关键字后,同时按下win+b，打开搜索===============================
#z::  			;win+b
	Send ^c   	;输入 ctrl+c
	sleep,100  	;等待100毫秒
	;根据选中的内容打开搜索
	run https://www.google.com/search?q=%clipboard%
return


#x::  			;win+x
	Send ^c   	;输入 ctrl+c
	sleep,100  	;等待100毫秒
	;根据选中的内容打开链接
	run, https://%clipboard%
return

#c::  			;win+x
	Send ^c   	;输入 ctrl+c
	sleep,100  	;等待100毫秒
	;根据选中的内容打开链接
	run, %clipboard%
return

CapsLock::LAlt
;=====================================================================o
;                       LAlt Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    LAlt + ` | {LAlt}                       ;|
;---------------------------------o-----------------------------------o
LAlt & F12::                                                     ;|
GetKeyState, CapsLockState, LAlt, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                         LAlt Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        LAlt  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
; LAlt::Send, {ESC}                                                ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                    LAlt Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      LAlt + h |  Left                          ;|
;                      LAlt + j |  Down                          ;|
;                      LAlt + k |  Up                            ;|
;                      LAlt + l |  Right                         ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
LAlt & h::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {Left}                                                 ;|
    else                                                             ;|
        Send, +{Left}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{Left}                                                ;|
    else                                                             ;|
        Send, +^{Left}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
LAlt & j::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {Down}                                                 ;|
    else                                                             ;|
        Send, +{Down}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{Down}                                                ;|
    else                                                             ;|
        Send, +^{Down}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
LAlt & k::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {Up}                                                   ;|
    else                                                             ;|
        Send, +{Up}                                                  ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{Up}                                                  ;|
    else                                                             ;|
        Send, +^{Up}                                                 ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
LAlt & l::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {Right}                                                ;|
    else                                                             ;|
        Send, +{Right}                                               ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{Right}                                               ;|
    else                                                             ;|
        Send, +^{Right}                                              ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     LAlt Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      LAlt + i |  Home                          ;|
;                      LAlt + o |  End                           ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
LAlt & i::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, +{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, +^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
LAlt & o::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, +{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, +^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      LAlt Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      LAlt + u |  PageUp                        ;|
;                      LAlt + p |  PageDown                      ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
LAlt & u::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
LAlt & p::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LShift") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     LAlt Mouse Controller                      ;|
;-----------------------------------o---------------------------------o
;                   LAlt + Up   |  Mouse Up                      ;|
;                   LAlt + Down |  Mouse Down                    ;|
;                   LAlt + Left |  Mouse Left                    ;|
;                  LAlt + Right |  Mouse Right                   ;|
;    LAlt + Enter(Push Release) |  Mouse Left Push(Release)      ;|
;-----------------------------------o---------------------------------o
; CapsLock & Up::    MouseMove, 0, -10, 0, R                           ;|
; CapsLock & Down::  MouseMove, 0, 10, 0, R                            ;|
; CapsLock & Left::  MouseMove, -10, 0, 0, R                           ;|
; CapsLock & Right:: MouseMove, 10, 0, 0, R                            ;|
;-----------------------------------o                                ;|
;LAlt & Enter::                                                   ;|
;SendEvent {Blind}{LButton down}                                      ;|
;KeyWait Enter                                                        ;|
;SendEvent {Blind}{LButton up}                                        ;|
;return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                           LAlt Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     LAlt + n  |  Ctrl + Delete (Delete a Word) ;|
;                     LAlt + m  |  Delete                        ;|
;                     LAlt + ,  |  BackSpace                     ;|
;                     LAlt + .  |  Ctrl + BackSpace              ;|
;-----------------------------------o---------------------------------o
LAlt & ,:: Send, {Del}                                           ;|
LAlt & .:: Send, ^{Del}                                          ;|
LAlt & m:: Send, {BS}                                            ;|
LAlt & n:: Send, ^{BS}                                           ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                            LAlt Editor                         ;|
;-----------------------------------o---------------------------------o
;                     LAlt + z  |  Ctrl + z (Cancel)             ;|
;                     LAlt + x  |  Ctrl + x (Cut)                ;|
;                     LAlt + c  |  Ctrl + c (Copy)               ;|
;                     LAlt + v  |  Ctrl + z (Paste)              ;|
;                     LAlt + a  |  Ctrl + a (Select All)         ;|
;                     LAlt + y  |  Ctrl + z (Yeild)              ;|
;                     LAlt + w  |  Ctrl + Right(Move as [vim: w]);|
;                     LAlt + b  |  Ctrl + Left (Move as [vim: b]);|
;-----------------------------------o---------------------------------o
LAlt & z:: Send {XButton1}                                             ;|
LAlt & x:: Send {XButton2}
; LAlt & c:: Send, ^c                                              ;|
; LAlt & v:: Send, ^v                                              ;|
; LAlt & a:: Send, ^a                                              ;|
LAlt & y:: Send, ^y                                              ;|
LAlt & w:: Send, ^{Right}                                        ;|
LAlt & b:: Send, ^{Left}                                         ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       LAlt Media Controller                    ;|
;-----------------------------------o---------------------------------o
;                    LAlt + F1  |  Volume_Mute                   ;|
;                    LAlt + F2  |  Volume_Down                   ;|
;                    LAlt + F3  |  Volume_Up                     ;|
;                    LAlt + F3  |  Media_Play_Pause              ;|
;                    LAlt + F5  |  Media_Next                    ;|
;                    LAlt + F6  |  Media_Stop                    ;|
;-----------------------------------o---------------------------------o
;LAlt & F1:: Send, {Volume_Mute}                                  ;|
;LAlt & F2:: Send, {Volume_Down}                                  ;|
;LAlt & F3:: Send, {Volume_Up}                                    ;|
LAlt & F10:: Send, {Media_Play_Pause}                             ;|
LAlt & F11:: Send, {Media_Next}                                   ;|
;LAlt & F12:: Send, {Media_Stop}                                   ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      LAlt Window Controller                    ;|
;-----------------------------------o---------------------------------o
;                     LAlt + s  |  Ctrl + Tab (Swith Tag)        ;|
;                     LAlt + q  |  Ctrl + W   (Close Tag)        ;|
;   (Disabled)  Alt + LAlt + s  |  AltTab     (Switch Windows)   ;|
;               Alt + LAlt + q  |  Ctrl + Tab (Close Windows)    ;|
;                     LAlt + g  |  AppsKey    (Menu Key)         ;|
;-----------------------------------o---------------------------------o
;LAlt & s::Send, ^{Tab}                                           ;|
;-----------------------------------o                                ;|
LAlt & q::                                                       ;|
if GetKeyState("LShift") = 0                                            ;|
{                                                                    ;|
    Send, ^w                                                         ;|
}                                                                    ;|
else {                                                               ;|
    Send, !{F4}                                                      ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
;LAlt & g:: Send, {AppsKey}                                       ;|
;;---------------------------------------------------------------------o


;=====================================================================o
;                        LAlt Self Defined Area                  ;|
;-----------------------------------o---------------------------------o
;                     LAlt + d  |  Alt + d(Dictionary)           ;|
;                     LAlt + f  |  Alt + f(Search via Everything);|
;                     LAlt + e  |  Open Search Engine            ;|
;                     LAlt + r  |  Open Shell                    ;|
;                     LAlt + t  |  Open Text Editor              ;|
;-----------------------------------o---------------------------------o
; LAlt & d:: Send, !d                                              ;|
;LAlt & /:: Send, ^/                                             ;|
; LAlt & e:: Run http://cn.bing.com/                               ;|
;LAlt & r:: Run Powershell                                        ;|
; LAlt & t:: Run C:\Users\user\AppData\Local\Programs\Microsoft VS Code\Code.exe    ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                        LAlt Char Mapping                       ;|
;-----------------------------------o---------------------------------o
;                     LAlt + ;  |  Enter (Cancel)                ;|
;                     LAlt + '  |  =                             ;|
;                     LAlt + [  |  Back         (Visual Studio)  ;|
;                     LAlt + ]  |  Goto Define  (Visual Studio)  ;|
;                     LAlt + /  |  Comment      (Visual Studio)  ;|
;                     LAlt + \  |  Uncomment    (Visual Studio)  ;|
;                     LAlt + 1  |  Build and Run(Visual Studio)  ;|
;                     LAlt + 2  |  Debuging     (Visual Studio)  ;|
;                     LAlt + 3  |  Step Over    (Visual Studio)  ;|
;                     LAlt + 4  |  Step In      (Visual Studio)  ;|
;                     LAlt + 5  |  Stop Debuging(Visual Studio)  ;|
;                     LAlt + 6  |  Shift + 6     ^               ;|
;                     LAlt + 7  |  Shift + 7     &               ;|
;                     LAlt + 8  |  Shift + 8     *               ;|
;                     LAlt + 9  |  Shift + 9     (               ;|
;                     LAlt + 0  |  Shift + 0     )               ;|
;-----------------------------------o---------------------------------o
LAlt & `;:: Send, {Enter}                                        ;|
LAlt & ':: Send, =                                               ;|
; LAlt & [:: Send, ^-                                              ;|
LAlt & ]:: Send, {F12}                                           ;|
;-----------------------------------o                                ;|
; LAlt & /::                                                       ;|
; Send, ^e                                                             ;|
; Send, c                                                              ;|
; return                                                               ;|
;-----------------------------------o                                ;|
; LAlt & \::                                                       ;|
; Send, ^e                                                             ;|
; Send, u                                                              ;|
; return                                                               ;|
;-----------------------------------o                                ;|
;LAlt & 1:: Send,^{F5}                                            ;|
;LAlt & 2:: Send,{F5}                                             ;|
;LAlt & 3:: Send,{F10}                                            ;|
;LAlt & 4:: Send,{F11}                                            ;|
;LAlt & 5:: Send,+{F5}                                            ;|
;;-----------------------------------o                                ;|
;LAlt & 6:: Send,+6                                               ;|
;LAlt & 7:: Send,+7                                               ;|
;LAlt & 8:: Send,+8                                               ;|
;LAlt & 9:: Send,+9                                               ;|
;LAlt & 0:: Send,+0                                               ;|
;支持汉字
getAscStr(str)
{
	charList:=StrSplit(str)
	for key,val in charList
		out.="{Asc " . asc(val) . "}"
	return out
}
;可以改为经常输入的密码(注意密码不要都一样),支持汉字
LAlt & F5::
{
Send % getAscStr("rg6y")
Send, {Enter}
Return
}

;或者使用Shift+滚轮
~LAlt & WheelUp::  ; 向左滚动.
ControlGetFocus, fcontrol, A
Loop 2  ; <-- 增加这个值来加快滚动速度.
    SendMessage, 0x0114, 0, 0, %fcontrol%, A  ; 0x0114 是 WM_HSCROLL, 它后面的 0 是 SB_LINELEFT.
return

~LAlt & WheelDown::  ; 向右滚动.
ControlGetFocus, fcontrol, A
Loop 2  ; <-- 增加这个值来加快滚动速度.
    SendMessage, 0x0114, 1, 0, %fcontrol%, A  ; 0x0114 是 WM_HSCROLL, 它后面的 1 是 SB_LINERIGHT.
return

;---------------------------------------------------------------------o

;new:





; Quick Text Formatting/Style Changes and Other Helpful Windows Tools
;    - High-compatibility and unifies keyboard shortcuts b/t programs
;    - Shortcuts for converting selected text to the following:
;    All lower: THIS_is-a_tESt -> this_is-a_test
;    All Upper: THIS_is-a_tESt -> THIS_IS-A_TEST
;    Caps case: ThisIsAnExample -> THIS_IS_AN_EXAMPLE
;               thisIsAnExample -> THIS_IS_AN_EXAMPLE
;    Camel Case: THIS_IS_AN_EXAMPLE -> ThisIsAnExample
;                this_is_an_example -> ThisIsAnExample
;                tHIS_Is_an_ExAmPLE -> ThisIsAnExample.
;
; Copy-Paste Buffer
; Use Ctrl+Shift+c to copy into the FIFO buffer (can do multiple times)
; Use Ctrl+Shift+v to paste from the FIFO buffer
; Convert selected text to lower case
;    Ex: THIS_is-a_tESt -> this_is-a_test
; Usage: Windows_Key + Alt + Down Arrow
#!Down::
    Convert_Lower()
RETURN
Convert_Lower()
{
    ; save original contents of clipboard
    Clip_Save:= ClipboardAll

    ; empty clipboard
    Clipboard:= ""

    ; copy highlighted text to clipboard
    Send ^c{delete}

    ; convert clipboard to desired case
    StringLower Clipboard, Clipboard

    ; send desired text
    Send %Clipboard%
    Len:= Strlen(Clipboard)

    ; highlight text
    Send +{left %Len%}

    ; restore clipboard
    Clipboard:= Clip_Save
}

; Convert selected text to upper case
;    Ex: THIS_is-a_tESt -> THIS_IS-A_TEST
; Usage: Windows_Key + Alt + Up Arrow
#!Up::
    Convert_Upper()
RETURN
Convert_Upper()
{
    ; save original contents of clipboard
    Clip_Save:= ClipboardAll

    ; empty clipboard
    Clipboard:= ""

    ; copy highlighted text to clipboard
    Send ^c{delete}

    ; convert clipboard to desired case
    StringUpper Clipboard, Clipboard

    ; send desired text
    Send %Clipboard%
    Len:= Strlen(Clipboard)

    ; highlight text
    Send +{left %Len%}

    ; restore clipboard
    Clipboard:= Clip_Save
}

; Convert selected text to inverted case
;    Ex: THIS_is-a_tESt -> this_IS-A_TesT
; Usage: Windows_Key + Alt + I
#!i::
    Convert_Inv()
RETURN
Convert_Inv()
{
    ; save original contents of clipboard
    Clip_Save:= ClipboardAll

    ; empty clipboard
    Clipboard:= ""

    ; copy highlighted text to clipboard
    Send ^c{delete}

    ; clear variable that will hold output string
    Inv_Char_Out:= ""

    ; loop for each character in the clipboard
    Loop % Strlen(Clipboard)
    {
        ; isolate the character
        Inv_Char:= Substr(Clipboard, A_Index, 1)

        ; if upper case
        if Inv_Char is upper
        {
            ; convert to lower case
           Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) + 32)
        }
        ; if lower case
        else if Inv_Char is lower
        {
            ; convert to upper case
           Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) - 32)
        }
        else
        {
            ; copy character to output var unchanged
           Inv_Char_Out:= Inv_Char_Out Inv_Char
        }
    }
    ; send desired text
    Send %Inv_Char_Out%
    Len:= Strlen(Inv_Char_Out)

    ; highlight desired text
    Send +{left %Len%}

    ; restore original clipboard
    Clipboard:= Clip_Save
}

; Convert selected text from CamelCase to CAPS_CASE
;    Ex: ThisIsAnExample -> THIS_IS_AN_EXAMPLE
; Usage: Windows_Key + Alt + Right Arrow Key
#!Right::
    Convert_cc()
RETURN
Convert_cc()
{
    ; save original contents of clipboard
    Clip_Save:= ClipboardAll

    ; empty clipboard
    Clipboard:= ""

    ; copy highlighted text to clipboard
    Send ^c{delete}

    ; clear variable that will hold output string
    Inv_Char_Out:= ""

    ; loop for each character in the clipboard
    Loop % Strlen(Clipboard)
    {
        ; isolate the character
        Inv_Char:= Substr(Clipboard, A_Index, 1)

        ; if upper case
        if Inv_Char is upper
        {
           if A_Index != 1
           {
               Inv_Char_Out:= Inv_Char_Out Chr(Asc("_"))
           }
           Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char))
        }
        ; if lower case
        else if Inv_Char is lower
        {
           ; convert to upper case
           Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) - 32)
        }
        else
        {
           ; copy character to output var unchanged
           Inv_Char_Out:= Inv_Char_Out Inv_Char
        }
    }
    ; send desired text
    Send %Inv_Char_Out%
    Len:= Strlen(Inv_Char_Out)

    ; highlight desired text
    Send +{left %Len%}

    ; restore original clipboard
    Clipboard:= Clip_Save
}

; Convert selected text from CAPS_CASE to CamelCase
;    Ex: THIS_IS_AN_EXAMPLE -> ThisIsAnExample
; Usage: Windows_Key + Alt + Left Arrow Key
LAlt & r::
    Convert_underscore_to_cc()
RETURN
Convert_underscore_to_cc()
{
    ; save original contents of clipboard
    Clip_Save:= ClipboardAll

    ; empty clipboard    Clipboard:= ""

    ; copy highlighted text to clipboard
    Send ^c{delete}

    ; clear variable that will hold output string
    Char_Out:= ""

    ; Find number of _'s in string by replacing with self
    ; and counting how many times we do it with ErrorLevel
    ; Result is in ErrorLevel
    StringReplace Clipboard,Clipboard,_,_,UseErrorLevel

    ; set Index
    Index=1

    ; loop for each character in the clipboard
    Loop % Strlen(Clipboard) - ErrorLevel
    {
        ; isolate the character
        Char:= Substr(Clipboard, Index, 1)
        ; isolate the next character too
        Next_Char:= Substr(Clipboard, Index + 1, 1)

        if Index = 1
        {
            if Char != "_"
            {
;                    ; isolate the character
;                    Inv_Char:= Substr(Clipboard, A_Index, 1)
;
                ; if upper case
                if Char is upper
                {
                    ; convert to lower case
                   Char_Out:= Char_Out Chr(Asc(Char) + 32)
                }
                ; convert to upper case
;                if Char is lower
;                {
;                    Char_Out:= Char_Out Chr(Asc(Char) - 32)
;                }
                else
                {
                    Char_Out:= Char_Out Char
                }
            }
        }
        else
        {
            ; if _
            if Chr(Asc(Char)) == Chr(Asc("_"))
            {
                if Next_Char != ""
                {
                    ; convert to upper case
                    if Next_Char is lower
                    {
                        Char_Out:= Char_Out Chr(Asc(Next_Char) - 32)
                    }
                    else
                    {
                        Char_Out:= Char_Out Next_Char
                    }
                }
                Index++
            }
            else
            {
                if Char is upper
                {
                    ; convert to lower case
                    Char_Out:= Char_Out Chr(Asc(Char) + 32)
                }
                else
                {
                    Char_Out:= Char_Out Char
                }
            }
        }

        ; increment index
        Index++
    }

    ; send desired text
    Send % getAscStr(Char_Out)
    Len:= Strlen(Char_Out)

    ; highlight desired text
    Send +{left %Len%}

    ; restore original clipboard
    Clipboard:= Clip_Save
}

; Find selected text
;    Ex: Select FindMeInProgram, use this, opens find dialog (if Ctrl-F)
;        and pastes FindMeInProgram
; Usage: Windows_Key + Alt + F
!+f::
Send, ^c
Sleep 100
Send, ^f
Sleep 100
Send, ^v
RETURN

; Open windows identical windows explorer
!+e::
Send, !d
Sleep 50
Send, ^c
Sleep 50
Send, #e
Sleep 300
Send, !d
Sleep 50
Send, ^v
Sleep 50
Send, {enter}
Sleep 50
Send, #{Right}
RETURN

; Copy selected text into a Copy FIFO Buffer (can do multiple times)
^+c::
FileEncoding UTF-8
filename := "C:\Temp\_clipboard_buffer.txt"
Send, ^c
Sleep 50
FileAppend, {{clipboard_buffer_delimiter}}%clipboard%, %filename%
RETURN

; Paste by getting first item from the Copy Buffer (can do multiple times)
; NOTE: Once pasted, you cannot restore that item to the Copy Buffer (e.g. Undo)
; except by re-copying it
;^+v::
;FileEncoding UTF-8
;filename := "C:\Temp\_clipboard_buffer.txt"
;clipboard_content := ""
;new_file_content := ""
;FileRead, file_text, %filename%
;
;copies_array := StrSplit(file_text, "{{clipboard_buffer_delimiter}}")
;
;Loop % copies_array.MaxIndex()
;{
;    item_content := copies_array[a_index]
;    ; first item is empty since we start the items with a delimeter,
;    ; so item at index 2 is what we want on the clipboard
;    If (a_index == 2)
;    {
;        clipboard_content := item_content
;    }
;    ; Keep appending other items to the new file content with delimiter to write back
;    Else If (a_index >= 2)
;    {
;        new_file_content = %new_file_content% {{clipboard_buffer_delimiter}} %item_content%
;    }
;    Else
;    {
;        ; Do nothing for first empty items
;    }
;}
;; Rewrite the file with the new content (e.g. last item popped off)
;file := FileOpen(filename, "w")
;if !IsObject(file)
;{
;    MsgBox Can't open "%filename%" for reading.
;    return
;}
;file.Write(new_file_content)
;file.Close()
;
;; Finally, paste the popped item
;clipboard = %clipboard_content%
;Send, ^v
;Sleep 50
;
;RETURN