VERSION 5.00
Begin VB.Form frmPrank 
   Caption         =   "PRANK!!!"
   ClientHeight    =   4935
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7050
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   ScaleHeight     =   4935
   ScaleWidth      =   7050
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "End Program Click Here"
      Height          =   615
      Left            =   2760
      TabIndex        =   1
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "http://ncw.dotheyknow.net"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   4560
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Created by Shane Lang"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   4320
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Don't Worry, It's a PRANK HAHAHAHA"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   480
      TabIndex        =   0
      Top             =   0
      Width           =   6255
   End
End
Attribute VB_Name = "frmPrank"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub
