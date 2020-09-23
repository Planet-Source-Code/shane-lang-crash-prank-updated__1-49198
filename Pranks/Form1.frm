VERSION 5.00
Begin VB.Form frmStart 
   BackColor       =   &H80000000&
   Caption         =   "Count Down"
   ClientHeight    =   5415
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7005
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   26.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   7005
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "EXIT"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   3
      Top             =   4920
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Interval        =   800
      Left            =   480
      Top             =   4800
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   2760
      TabIndex        =   1
      Text            =   "60"
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000000&
      Caption         =   "Seconds"
      Height          =   855
      Left            =   2280
      TabIndex        =   2
      Top             =   3480
      Width           =   2175
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000000&
      Caption         =   "Your computer will crash in "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   5415
   End
End
Attribute VB_Name = "frmStart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Orginal Code done by Shane Lang aka Scriptz

Private Sub Command1_Click()
    frmStart.Hide
    Load frmTimer
End Sub

'This will make the text in the text box count down by
'one ever second which is 1000 intervals.
'It has been changed to 800 as 60 seconds is too long.
'But you change the time by changing the intervals in
'the time properties.
'You also can change the starting display number in the
'Text box properties - text and type your desired number
'there.
Private Sub Timer1_Timer()
    Text1.Text = Text1 - 1
        If Text1.Text = 0 Then
            frmStart.Hide
            Load frmTimer
        End If
End Sub

'When the user tries to exit from the form, the form will
'be hidden and the frmTimer will load.
'If the user uses alt-ctrl-delete to get out then the
'program will close and will not continue.
Private Sub Form_Unload(Cancel As Integer)
    frmStart.Hide
    Load frmTimer
End Sub
