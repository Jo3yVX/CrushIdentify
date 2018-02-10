#cs
Author: Le Minh Quyet
Tested on Windows 7 x64 - Autoit version 3.3.14.3
February 10 2018
#ce

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region GUI Form
$Form = GUICreate("Crush Identifier", 520, 145, 187, 121) ; Creat GUI
GUISetBkColor(0xBFCDDB) ; Background color
$Label = GUICtrlCreateLabel("Type your crush's name : ", 8, 48, 233, 25)
GUICtrlSetFont(-1, 14, 400, 0, "Times New Roman")
$Crushname = GUICtrlCreateInput("", 248, 48, 241, 25)
GUICtrlSetFont(-1, 14, 400, 0, "Times New Roman")
$identify = GUICtrlCreateButton("Identify", 360, 96, 121, 33)
$cancel = GUICtrlCreateButton("CANCEL", 36, 96, 121, 33)

GUICtrlSetFont(-1, 11, 400, 2, ".VnSouthernH")
GUISetState(@SW_SHOW) ; Show the GUI Form
#EndRegion


While 1
	$nMsg = GUIGetMsg() ; Hold user's actions
	Switch $nMsg
		 Case $GUI_EVENT_CLOSE
			Exit
		 Case $identify
			$name = GUICtrlRead($Crushname) ; Read input
			MsgBox(0,"Crush Identifier","Your Crush's name is: " & $name)
		 Case $cancel
			MsgBox(0,"Crush Identifier","Are you sure ? ")
			Sleep(500)
			Exit
	EndSwitch
 WEnd

