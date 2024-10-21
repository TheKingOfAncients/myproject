^#w:: 
{
        Line1 := InputBox("(your input will be hidden)", "Enter User Name", "password").Value
    Line2 := InputBox("(your input will still be hidden)", "Enter Password", "password").Value
    Run "https://connectmfa.uchealth.com/logon/LogonPoint/index.html"
    Sleep 3000
    ;Can make a control flow "code" in case already log into Citrix via Chrome.
    if WinExist("UC Health Connect Website - Google Chrome")
        ;MsgBox("Successful!")
        WinActivate
    Send Line1
    Send "{Tab}"
    Send Line2
    Send "{Tab}"
    Send "{Enter}"
    Sleep 3000
    Line3 := InputBox("(your input will STILL be hidden)", "Enter Code", "password").Value
    Send Line3
    ; Tab * 1 -> Enter * 1
    Send "{Tab}"
    Send "{Enter}"
    ; Tab * 7 -> Enter * 1
    Sleep 3000
    if WinExist("Citrix Workspace - Google Chrome")
        ;MsgBox("Successful x 2!")
        WinActivate
    Send "{Tab 7}"
    Send "{Enter}"
    ; Tab * 7 -> Enter * 1 
    Sleep 3000
    Send "{Tab 2}"
    Send "{Enter}"
    ;Tab * 2 -> Enter * 1
    ;Run "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" "C:\Users\Jeremy's Work Laptop\Documents\Programs\Programming\PowerShell\Automatic File Opener.ps1"
    ; Run PowerShell code
    Sleep 3000
    if WinExist("Citrix Workspace - Google Chrome")
        ;MsgBox("Successful x 2!")
        WinActivate
    
    ;psScriptPath := "C:\Program Files\Automatic_File_Opener.ps1"
    ;Run PowerShell.exe -ExecutionPolicy Bypass -File "C:\Program Files\Automatic_File_Opener.ps1"
    ; Inline PowerShell command
    ;Run C:\Windows\System32\WindowsPowerShell\v1.0PowerShell.exe -Command "Write-Host 'Hello from PowerShell!'"
    ;Run "C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell_ise.exe"
    
    
    Run "C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe" 
    /*
    Send "$downloadsPath"
    Send " "
    Send " = " 
    Send " "
    Send "C:\Users\Jeremy\'s Work Laptops\Downloads"
    ;Send "{Enter}"
    Send "$latestFile = Get-ChildItem -Path $downloadsPath | Sort-Object LastWriteTime -Descending | Select-Object -First 1"
    ;Send "{Enter}"
    Send "if ($latestFile) {"
    ;Send "{Enter}"
    Send "{Tab}"
    Send "Start-Process $latestFile.FullName"
    ;Send "{Enter}"
    Send "} else {"
    Send "{Tab}"
    Send "Write-Host"
    Send "``"
    Send "No files found in the Downloads folder.}"
    ;Send "{Enter}"
    */
    ; { Start-Process $latestFile.FullName } else { Write-Host `"No files found in the Downloads folder." }"
    ;= `"C:\Users\Jeremy's Work Laptop\Downloads""'
    Sleep 2000
    Send "cd .."
    Send "{Enter}"
    Send ""
    /*
     Send "cd Documents"
    Send "{Enter}"
    Sleep 1000
    Send "cd Programs"
    Send "{Enter}"
    Sleep 1000
    Send "cd Programming"
    Send "{Enter}"
    Sleep 1000
    */
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
    Sleep 2000
    Send "{Enter}"
    ;Send "./Automatic_File_Opener.ps1"
    ;Send "{Enter}"
    ; Hyperspace Open

    Send "{Enter}"
    ; Code from here down needs work. 
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

