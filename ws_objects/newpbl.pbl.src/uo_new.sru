$PBExportHeader$uo_new.sru
forward
global type uo_new from userobject
end type
type cb_1 from commandbutton within uo_new
end type
end forward

global type uo_new from userobject
integer width = 1943
integer height = 1200
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_1 cb_1
end type
global uo_new uo_new

on uo_new.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on uo_new.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within uo_new
integer x = 151
integer y = 84
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

