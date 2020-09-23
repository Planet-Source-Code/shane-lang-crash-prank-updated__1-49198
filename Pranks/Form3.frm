VERSION 5.00
Begin VB.Form frmDelete 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000000&
   Caption         =   "Deleting..."
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5955
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   5955
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtList 
      BackColor       =   &H8000000B&
      CausesValidation=   0   'False
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   960
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form3.frx":0000
      Top             =   2640
      Width           =   3975
   End
   Begin VB.Timer timPercent 
      Interval        =   100
      Left            =   0
      Top             =   3600
   End
   Begin VB.TextBox txtPercent 
      Alignment       =   2  'Center
      BackColor       =   &H80000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   2
      Text            =   "0"
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000000&
      Caption         =   "%"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3240
      TabIndex        =   3
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000B&
      Caption         =   "Now Deleting C Drive:"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   1
      Top             =   480
      Width           =   4455
   End
End
Attribute VB_Name = "frmDelete"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Unload(Cancel As Integer)
    frmDelete.Hide
    frmCrash.Show
End Sub

Public Sub timPercent_Timer()
    txtPercent.Text = txtPercent + 1
    
If txtPercent.Text = 15 Then txtList.Text = txtList.Text + "Windows folder found..."
If txtPercent.Text = 20 Then txtList.Text = txtList.Text + vbCrLf + "Accessing folder..."
If txtPercent.Text = 30 Then txtList.Text = txtList.Text + vbCrLf + "Folder Accessed..."
If txtPercent.Text = 40 Then txtList.Text = txtList.Text + vbCrLf + "Deleting System Files..."
If txtPercent.Text = 99 Then
    frmCrash.Show
    frmDelete.Hide
End If
End Sub
