#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

maximized := true

Gui, add, text,, Press Shift + F12 to minimize or restore
Gui, add, text, gLinkRepository cBlue, By: https://github.com/lukinhoh
Gui, add, text, gLinkRepositoryProject cBlue, Repository: https://github.com/lukinhoh/ElfBotShortcutMinimizeMaximize

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

LinkRepository:
    Run, https://github.com/lukinhoh
Return

LinkRepositoryProject:
    Run, https://github.com/lukinhoh/ElfBotShortcutMinimizeMaximize
Return

GuiClose:
ExitApp