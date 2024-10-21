^#w:: 
{
    Line1 := InputBox("(your input will be hidden)", "Enter User Name", "password").Value
    Line2 := InputBox("(your input will still be hidden)", "Enter Password", "password").Value
    Run "https://connectmfa.uchealth.com/logon/LogonPoint/index.html"
    Sleep 1500
    if WinExist("UC Health Connect Website - Google Chrome")
        ;MsgBox("Successful!")
        WinActivate
    Send Line1
    Send "{Tab}"
    Send Line2
    Send "{Tab}"
    Send "{Enter}"
    Sleep 1500
    Line3 := InputBox("(your input will STILL be hidden)", "Enter Code", "password").Value
    Send Line3
    Send "{Tab}"
    Send "{Enter}"
    Sleep 1500
    if WinExist("Citrix Workspace - Google Chrome")
        ;MsgBox("Successful x 2!")
        WinActivate
    Send "{Tab 7}"
    Send "{Enter}"
    Sleep 1500
    Send "{Tab 2}"
    Send "{Enter}"
    ;Run "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" "C:\Users\Jeremy's Work Laptop\Documents\Programs\Programming\PowerShell\Automatic File Opener.ps1"
    ; Run PowerShell code
    Sleep 1500
    if WinExist("Citrix Workspace - Google Chrome")
        ;MsgBox("Successful x 2!")
        WinActivate
    
    Run "C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe" 
    Sleep 1000
    Send "cd .."
    Send "{Enter}"
    Send ""
    Send "cd PowerShell"
    Send "{Enter}"
    Sleep 1000
    Send "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass"
    Send "{Enter}"
    Sleep 1000
    Send "y"
    Sleep 1000
    Send "{Enter}"
    Sleep 1000
    Send "./Automatic_File_Opener.ps1"
    Sleep 1000
    Send "{Enter}"
    ;Send "./Automatic_File_Opener.ps1"
    ;Send "{Enter}"
    ; Hyperspace Open
    Send "{Enter}"
    ; Code from here down needs work. 
    ;Awaiting for Hyperspace & Warning Apperance
    Sleep 20000
    if WinExist("Citrix Receiver - Security Warning")
        ;MsgBox("Successful x 3!")
        WinActivate
    Send "{Enter}"
    if WinExist("Hyperspace – UC Health PRD Environment - \\Remote")
        ;MsgBox("Successful x 4!")
        WinActivate
    Send Line1
    Send "{Tab}"
    Send Line2
    Send "{Tab}"
    Send "{Enter}"
    Sleep 1000
    ;MsgBox("Welcome To Epic~")
    Sleep 1000
    Send "{Tab}"
    Send "{Enter}"
    ;stop
}

; Hyperspace – UC Health PRD Environment - \\Remote
; Also would be nice to tighten up the sleep times.
; 10/21/2024  
/*
    - deleted excess comments, 
    - decrease sleep time (besides Hyperspace & Warning Apperance)
        - 1st 4 from 3 -> 1.5 seconds
        - Powershell Path & ./Automatic_File_Opener from 2 sec -> 1 second
*/


