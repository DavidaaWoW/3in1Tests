#include <MsgBoxConstants.au3>
#include <Clipboard.au3>


WinWaitActive("Form1")
ControlClick("Form1", "", "[NAME:button1]")
WinWaitActive("Form2")
ControlClick("Form2", "", "[NAME:button1]")
Sleep(10)
ControlClick("Form2", "", "[NAME:button2]")
$data = _ClipBoard_GetData()
Sleep(1000)
ControlClick("Form2", "", "[NAME:button3]")
WinWaitActive("Form1")
ControlClick("Form1", "", "[NAME:button3]")
WinWaitActive("Form3")
ControlClick("Form3", "", "[NAME:button5]")
ControlClick("Form3", "", "[NAME:button2]")
ControlClick("Form3", "", "[NAME:button1]")
ControlClick("Form3", "", "[NAME:button3]")
$encryptedData = _ClipBoard_GetData()
$key = ControlGetText("Form3", "", "[NAME:textBox1]")
Sleep(1000)
ControlClick("Form3", "", "[NAME:button4]")
WinWaitActive("Form1")
ControlClick("Form1", "", "[NAME:button2]")
WinWaitActive("Form4")
ControlClick("Form4", "", "[NAME:button2]")
ControlSetText("Form4", "", "[NAME:textBox2]", $key)
Sleep(1000)
ControlClick("Form4", "", "[NAME:button1]")