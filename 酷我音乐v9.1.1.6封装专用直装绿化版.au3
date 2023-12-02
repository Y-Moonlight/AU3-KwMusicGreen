#RequireAdmin
#NoTrayIcon

$arg = ""
For $i = 1 To $CmdLine[0]
    Select
        Case $CmdLine[$i] = "/s"
            $arg = "s"
		Case $CmdLine[$i] = "/S"
            $arg = "S"
    EndSelect
Next




If $arg = "s" Then

DirCreate("C:\Windows\Temp\KwInstallTemp")

FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\RunWait.exe","C:\Windows\Temp\KwInstallTemp\")
			Sleep(500)
			Run("C:\Windows\Temp\KwInstallTemp\RunWait.exe")
			Sleep(500)
			$PID=WinGetProcess ("执行进度")
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\kwmusic_kabcs_080110_v9.0.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\kwmusic_kabcs_080110_v9.0.exe /S")
			sleep(500)
			ProcessClose("kwmusic.exe")
            ProcessClose("KwWebKit.exe")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KwDataDef.dll")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KwMusicDLL.dll")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KWUpdate.exe")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\kwupdater.exe")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KwDataDef.dll","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KwMusicDLL.dll","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KWUpdate.exe","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\kwupdater.exe","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\KwUser_PB.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\KwUser_PB.exe")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\KwData_PB.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\KwData_PB.exe")
			RegDelete('HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{C190FFCA-1E3C-4C52-AAFF-01AD4CF394E0}')
			DirRemove("C:\KwDownload",1)
			Sleep(500)
			FileDelete("C:\Windows\Temp\KwInstallTemp\kwmusic_kabcs_080110_v9.0.exe")
			FileDelete("C:\Windows\Temp\KwInstallTemp\KwUser_PB.exe")
			FileDelete("C:\Windows\Temp\KwInstallTemp\KwData_PB.exe")
			Sleep(500)
			ProcessClose ($PID)
			Sleep(500)
			DirRemove("C:\Windows\Temp\KwInstallTemp",1)
			Exit






ElseIf $arg = "S" Then

DirCreate("C:\Windows\Temp\KwInstallTemp")

FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\RunWait.exe","C:\Windows\Temp\KwInstallTemp\")
			Sleep(500)
			Run("C:\Windows\Temp\KwInstallTemp\RunWait.exe")
			Sleep(500)
			$PID=WinGetProcess ("执行进度")
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\kwmusic_kabcs_080110_v9.0.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\kwmusic_kabcs_080110_v9.0.exe /S")
			sleep(500)
			ProcessClose("kwmusic.exe")
            ProcessClose("KwWebKit.exe")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KwDataDef.dll")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KwMusicDLL.dll")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KWUpdate.exe")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\kwupdater.exe")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KwDataDef.dll","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KwMusicDLL.dll","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KWUpdate.exe","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\kwupdater.exe","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\KwUser_PB.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\KwUser_PB.exe")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\KwData_PB.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\KwData_PB.exe")
			RegDelete('HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{C190FFCA-1E3C-4C52-AAFF-01AD4CF394E0}')
			DirRemove("C:\KwDownload",1)
			Sleep(500)
			FileDelete("C:\Windows\Temp\KwInstallTemp\kwmusic_kabcs_080110_v9.0.exe")
			FileDelete("C:\Windows\Temp\KwInstallTemp\KwUser_PB.exe")
			FileDelete("C:\Windows\Temp\KwInstallTemp\KwData_PB.exe")
			Sleep(500)
			ProcessClose ($PID)
			Sleep(500)
			DirRemove("C:\Windows\Temp\KwInstallTemp",1)
			Exit




EndIf




#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\[AU3]GUI软件快速安装程序.kxf
DirCreate("C:\Windows\Temp\KwInstallTemp")
FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\ico.ico","C:\Windows\Temp\KwInstallTemp\")



$Form1 = GUICreate("酷我音乐v9.1.1.6封装专用直装绿化版_By飘白", 561, 371, -1, -1,$WS_CAPTION + $WS_EX_TOOLWINDOW)
GUISetBkColor(0xA6CAF0)
$Edit1 = GUICtrlCreateEdit("", 100, 24, 433, 245,$WS_VSCROLL+$ES_READONLY)
GUICtrlSetData(-1, StringFormat("——————————直装绿化版软件特点——————————\r\n@飘白整合的任何直装绿化版软件都是在官方原版软件的基础上进行自\r\n动设置和绿化处理。所有设置都能在官方软件设置界面里找到对应的设\r\n置选项，只不过是采用脚本方式来自动化完成官方允许的各种设置。设\r\n置内容包括关闭更新，关闭广告弹窗，关闭消息提醒，关闭不必要的功\r\n能，关闭残留进程等等。为什么用直装方式？因为这样可以尽量保证官\r\n方软件原汁原味的安装过程，在官方允许范围内进行自动优化和设置，\r\n这样一般不会有什么异常BUG，也减少不必要的问题和错误。\r\n酷我音乐v9.1.1.6封装专用直装绿化版支持静默自动安装自动绿化，\r\n静默参数为“/s”或“/S”（不包括引号）\r\n——————————版权纠纷和免责声明——————————\r\n原软件所有版权和解释权归原软件总公司所有。\r\n并由@飘白在官方软件允许的设置范围内进行整合绿化。软件仅限于个\r\n人研究学习使用，禁止用于任何商业目的或者非法用途。使用者造成的\r\n任何非法盈利或者侵权纠纷由使用者自行承担一切法律后果，与@飘白\r\n无关。安装此软件即表示已明确接受此声明。\r\n————————————————————————————\r\n整合不易，转载请注明出处→作者：@飘白  QQ：3570150233"))
GUICtrlSetFont(-1, 10, 400, 0, "微软雅黑")
GUICtrlSetBkColor(-1, 0xF0F0F0)
$Input1 = GUICtrlCreateInput("C:\Program Files (x86)\kuwo\kuwomusic （暂不支持更改）", 20, 295, 428, 27)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUICtrlSetState(-1, $GUI_DISABLE)
$Button1 = GUICtrlCreateButton("更改目录", 465, 295, 70, 28)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
GUICtrlSetState(-1, $GUI_DISABLE)
$Button2 = GUICtrlCreateButton("开始安装", 379, 330, 70, 28)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
$Button3 = GUICtrlCreateButton("退出安装", 465, 330, 70, 28)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
$Label1 = GUICtrlCreateLabel("作者：@飘白    QQ：3570150233", 24, 335, 213, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
$Label2 = GUICtrlCreateLabel("安装目录↓", 25, 265, 63, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
$Icon1 = GUICtrlCreateIcon("C:\Windows\Temp\KwInstallTemp\ico.ico", -1, 26, 24, 48, 48)
$Label3 = GUICtrlCreateLabel("安装说明→", 20, 90, 69, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			DirRemove("C:\Windows\Temp\KwInstallTemp",1)
			Exit
		Case $Button3
			DirRemove("C:\Windows\Temp\KwInstallTemp",1)
			Exit
		Case $Label1
			MsgBox(0+64+262144,"关于作者","制作不易，转载请注明出处↓" & @CRLF & "作者：@飘白" & @CRLF & "QQ：3570150233 " & @CRLF & "Email：3570150233@qq.com")
		Case $Button2
			GUISetState(@SW_HIDE)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\RunWait.exe","C:\Windows\Temp\KwInstallTemp\")
			Sleep(500)
			Run("C:\Windows\Temp\KwInstallTemp\RunWait.exe")
			Sleep(500)
			$PID=WinGetProcess ("执行进度")
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\kwmusic_kabcs_080110_v9.0.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\kwmusic_kabcs_080110_v9.0.exe /S")
			sleep(500)
			ProcessClose("kwmusic.exe")
            ProcessClose("KwWebKit.exe")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KwDataDef.dll")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KwMusicDLL.dll")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\KWUpdate.exe")
            FileDelete("C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\kwupdater.exe")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KwDataDef.dll","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KwMusicDLL.dll","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\KWUpdate.exe","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\Kwpatch\kwupdater.exe","C:\Program Files (x86)\kuwo\kuwomusic\9.1.1.6_PE\bin\")
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\KwUser_PB.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\KwUser_PB.exe")
			FileInstall("D:\Users\Documents\AU3脚本开发\酷我音乐v9.1.1.6封装专用直装绿化版\KwData_PB.exe","C:\Windows\Temp\KwInstallTemp\")
			RunWait("C:\Windows\Temp\KwInstallTemp\KwData_PB.exe")
			RegDelete('HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{C190FFCA-1E3C-4C52-AAFF-01AD4CF394E0}')
			DirRemove("C:\KwDownload",1)
			Sleep(500)
			FileDelete("C:\Windows\Temp\KwInstallTemp\kwmusic_kabcs_080110_v9.0.exe")
			FileDelete("C:\Windows\Temp\KwInstallTemp\KwUser_PB.exe")
			FileDelete("C:\Windows\Temp\KwInstallTemp\KwData_PB.exe")
			Sleep(500)
			ProcessClose ($PID)
			Sleep(500)
			MsgBox(0+64+65536,"提示","酷我音乐v9.1.1.6安装绿化完毕，敬请清爽使用吧！")
			DirRemove("C:\Windows\Temp\KwInstallTemp",1)
			Exit








	EndSwitch
WEnd
