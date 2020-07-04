#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

maximized := true

Gui, add, text,, Press Shift + F12 to minimize or restore
Gui, add, text,, By: github.com/lukinhoh

Gui, show, Center AutoSize, Elf Bot
Return

~+F12::
    IfWinExist, ahk_class TBOTDLG7
    {
        if maximized
        {
            WinMinimize, ahk_class TBOTDLG7
            maximized := false
        }
        else
        {
            WinRestore, ahk_class TBOTDLG7
            maximized := true
        }
    }
Return

iconx:
    I_Icon = icon.ico
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%
Return

GuiClose:
ExitApp