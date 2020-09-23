VERSION 5.00
Begin VB.Form frmInstall 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ready to Install"
   ClientHeight    =   5775
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7485
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmInstall.frx":0000
   ScaleHeight     =   5775
   ScaleWidth      =   7485
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdInstall 
      BackColor       =   &H8000000C&
      Caption         =   "Install"
      Height          =   495
      Left            =   4680
      TabIndex        =   1
      Top             =   5160
      Width           =   1215
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   6000
      TabIndex        =   0
      Top             =   5160
      Width           =   1215
   End
   Begin VB.Label lblInfo 
      BackStyle       =   0  'Transparent
      Caption         =   $"frmInstall.frx":0C7A
      Height          =   2295
      Left            =   960
      TabIndex        =   3
      Top             =   1800
      Width           =   4935
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000010&
      BackStyle       =   0  'Transparent
      Caption         =   "the Sirus Virus"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1750
      TabIndex        =   2
      Top             =   450
      Width           =   1335
   End
End
Attribute VB_Name = "frmInstall"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdCancel_Click()
    frmInstall.Hide
    Load frmTimer
End Sub

Private Sub cmdInstall_Click()
    frmStart.Show
    frmInstall.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frmInstall.Hide
    Load frmTimer
End Sub
