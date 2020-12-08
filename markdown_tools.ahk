; ---------------------------------
; MD hyperlink
; ---------------------------------

; Copies selected text as the URL portion of a Markdown-formatted hyperlink
; Asks for the text to display for the link
; Places the link as follows in the clipboard [text](url)

^!c::
    ;Clipboard :=
    SendInput ^c

    MDurl = %Clipboard%
    MDtext = %Clipboard%

    IfNotInString, MDurl, ://
    MDurl = http://%MDurl%

    Gui, +AlwaysOnTop +Owner
    Gui, Add, Text,, Text to display
    Gui, Add, Edit, vMDtext w320 r1, %MDtext%
    Gui, Add, Text,, URL
    Gui, Add, Edit, vMDurl w320 r1, %MDurl%
    Gui, Add, Button, Default, OK
    Gui, Show, w350, MDLink
Return

ButtonOK:
    Gui, Submit
    Gui, Destroy
    Clipboard = [%MDtext%](%MDurl%)
    TrayTip, MDLink, Markdown-formatted URL in clipboard
    SetTimer, RemoveTrayTip, 2000
Return

GuiClose:
    Gui, Destroy
    TrayTip, MDLink, MD Link generation cancelled
    SetTimer, RemoveTrayTip, 2000
Return

RemoveTrayTip:
    ; Used by several functions to kill the TrayTip
    SetTimer, RemoveTrayTip, Off 
    TrayTip 
Return