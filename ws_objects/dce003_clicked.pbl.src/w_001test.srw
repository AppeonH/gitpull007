﻿$PBExportHeader$w_001test.srw
forward
global type w_001test from window
end type
type cb_1 from commandbutton within w_001test
end type
end forward

global type w_001test from window
integer width = 3566
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global w_001test w_001test

on w_001test.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_001test.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_001test
integer x = 745
integer y = 356
integer width = 457
integer height = 128
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "none"
end type

