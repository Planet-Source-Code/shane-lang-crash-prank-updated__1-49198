VERSION 5.00
Begin VB.Form frmCrash 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   Caption         =   "Form5"
   ClientHeight    =   3090
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form5"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      BackColor       =   &H80000008&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000005&
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Text            =   "0"
      Top             =   0
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   1800
      Top             =   2400
   End
End
Attribute VB_Name = "frmCrash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Timer1_Timer()
    Text1.Text = Text1 + 1
    If Text1 = 15 Then
    frmCrash.Hide
    frmPrank.Show
    End If
End Sub
