#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



F4::
	iter = 0
	x_monitor_res := A_screenWidth
	y_monitor_res := A_screenHeight
	x_coord = 0
	y_coord = 0
	Send, {Control down}
	while GetKeyState("F4", "P"){
		if(iter == 5){
			x_coord += 70
			y_coord = 0
			iter = 0
		}
		MouseMove, 1726/2560*x_monitor_res + x_coord, 819/1440*y_monitor_res + y_coord
		Sleep 75
		MouseClick, left
		iter ++
		y_coord += 70
	}
	
	Send, {Control up}
	
	