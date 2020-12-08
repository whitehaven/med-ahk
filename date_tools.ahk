; date in ISO 1988 standard
::td::
SendInput %A_YYYY%-%A_MM%-%A_DD%
return

; date in suboptimal US format
::td_us::
SendInput %A_MM%/%A_DD%/%A_YYYY%
return

; date, 24-hr/military time as ISO 1988 standard
::tdm::
SendInput %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%
return

; date, am/pm time
::tdt::
FormatTime, now,, yyyy-M-d hh:mm tt
SendInput %now%
return

; /*
; Name: Get a Date
; Version 1.0 (Tuesday, December 22, 2015)
; Created: Tuesday, December 22, 2015
; Author: tidbit
; Credit: 

; Hotkeys:
    ; esc         --- Quit
	; enter       --- Copy the output date
	; doubleclick --- Copy the output date
	
; Description:
    ; - Choose a date from the calendar and get the date in a format you want.
    ; - You may enter in your own format too, by using the formatting rules from here: https://autohotkey.com/docs/commands/FormatTime.htm
    
; */

; ^#d::  ; Ctrl Win D hotkey
; #SingleInstance, force
; _name_:="Get a Date"
; _ver_:="1.0"
; t:=0 ; doubleclick time checker

; gui, margin, 0, 0
; gui, color, 0x8D9670
; gui, -MinimizeBox +alwaysOnTop ToolWindow -theme
; gui, add, monthCal, xm ym +altsubmit vdate gupdate,
; gui, add, comboBox, xm y+2 wp r10 vformat gupdate, Time|ShortDate|LongDate||dddd`, MMMM dd`, yyyy HH:mm tt|dd/MM/yyyy|MM/dd/yyyy|yyyy/MM/dd

; gui, add, edit, xm y+2 w20 r2 +center vdisp,
; gui, add, button, x+2 yp hp default vbtn gcopy, Copy
; guiControlGet, pos, pos, date
; guiControlGet, pos2, pos, btn
; guiControl, move, disp, % "w" posw-pos2w-2
; guiControl, move, btn, % "x" posw-pos2w

; guiControl, focus, format
; gosub, update
; gui, show,, %_name_% - %_ver_%
; return


; update:
	; gui, submit, noHide

	; if (A_GuiEvent=1 && (A_TickCount-t)<=DllCall("GetDoubleClickTime") )
		; gosub, Copy
	; else if (A_GuiEvent=1)
		; t:=A_TickCount

	; date.=A_Hour A_Min A_Sec
	; formatTime, out, %date% R, %format%
	; guiControl,, disp, %out%
; return


; copy:
	; gui, submit, noHide
	; clipboard:=disp
	; trayTip, Date copied, Copied to clipboard:`n%disp%
; return


; guiClose:
; guiEscape:
    ; critical
    ; exitapp
; return