#include <MsgBoxConstants.au3>
#include <Clipboard.au3>


WinWaitActive("Form1")
ControlClick("Form1", "", "[NAME:button1]")
WinWaitActive("Form2")
ControlClick("Form2", "", "[NAME:button1]")
ControlClick("Form2", "", "[NAME:button2]")
$data = _ClipBoard_GetData()
MsgBox($MB_OK, "Password1", $data) 
Sleep(1000)
ControlClick("Form2", "", "[NAME:radioButton2]")
ControlClick("Form2", "", "[NAME:button1]")
ControlClick("Form2", "", "[NAME:button2]")
$data = _ClipBoard_GetData()
MsgBox($MB_OK, "Password1", $data)
Sleep(1000)
ControlClick("Form2", "", "[NAME:radioButton3]")
ControlClick("Form2", "", "[NAME:button1]")
ControlClick("Form2", "", "[NAME:button2]")
$data = _ClipBoard_GetData()
MsgBox($MB_OK, "Password1", $data)
Sleep(1000) 