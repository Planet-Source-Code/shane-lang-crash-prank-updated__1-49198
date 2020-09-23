VERSION 5.00
Begin VB.Form frmTimer 
   Caption         =   "Form2"
   ClientHeight    =   1140
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2310
   LinkTopic       =   "Form2"
   ScaleHeight     =   1140
   ScaleWidth      =   2310
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Text            =   "1"
      Top             =   120
      Width           =   615
   End
   Begin VB.Timer Time 
      Interval        =   1000
      Left            =   720
      Top             =   240
   End
End
Attribute VB_Name = "frmTimer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Sub Time_Timer()
    Text1.Text = Text1 + 1
    If Text1.Text = 40 Then
    frmDelete.Show
    frmTimer.Hide
    End If
End Sub
