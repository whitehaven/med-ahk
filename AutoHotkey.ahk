#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Hotstring EndChars -()[]{}:;'"/\,.?!`n `t

#Include medical_abbreviations.ahk
#Include hotstring_creator.ahk
#Include monster_math.ahk
#Include date_tools.ahk
#Include icu_rotation.ahk
#Include formatting_functions.ahk
; TODO: #Include markdown_tools.ahk
