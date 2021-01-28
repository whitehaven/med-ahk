#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Hotstring EndChars -()[]{}:;'"/\,.?!`n `t

#Include medical.ahk
#Include hotstring_creator.ahk
#Include monster_math.ahk
#Include date_tools.ahk
#Include formatting_functions.ahk
; TODO: #Include markdown_tools.ahk

; offline modules
; #Include icu_rotation.ahk