B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=10.9
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: True
	#IncludeTitle: False
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.
	Private B4XGifView1 As B4XGifView
	Private B4XGifView2 As B4XGifView
	Private B4XGifView3 As B4XGifView
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("Q1")
	B4XGifView1.SetGif(File.DirAssets,"Q1.gif")
	B4XGifView2.SetGif(File.DirAssets,"cloud.gif")
	B4XGifView3.SetGif(File.DirAssets,"cloud.gif")
End Sub	

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Private Sub eYes_Click
	B4XGifView1.SetGif(File.DirAssets,"close1.gif")
	Sleep(8000)
	StartActivity(Q11)
	B4XGifView1.SetGif(File.DirAssets,"Q1.gif")
End Sub

Private Sub eNo_Click
	B4XGifView1.SetGif(File.DirAssets,"far1.gif")
	Sleep(7500)
	StartActivity(Q12)
	B4XGifView1.SetGif(File.DirAssets,"Q1.gif")
End Sub
Sub Activity_KeyPress (KeyCode As Int) As Boolean

	Log("Keypress: " & KeyCode)
   
	Select Case KeyCode
		Case KeyCodes.KEYCODE_BACK
			ToastMessageShow("Cannot go back!! please continue Game",True)
			Activity_Create(True)

			'....handle the back key event yourself here ...
           
			Return True    'returning true tells the OS that you handled the keypress event and that the OS should not do anthing further
	End Select
End Sub
