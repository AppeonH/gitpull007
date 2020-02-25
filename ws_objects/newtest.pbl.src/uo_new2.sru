$PBExportHeader$uo_new2.sru
forward
global type uo_new2 from userobject
end type
type st_1 from statictext within uo_new2
end type
end forward

global type uo_new2 from userobject
integer width = 1819
integer height = 1012
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_1 st_1
end type
global uo_new2 uo_new2

on uo_new2.create
this.st_1=create st_1
this.Control[]={this.st_1}
end on

on uo_new2.destroy
destroy(this.st_1)
end on

type st_1 from statictext within uo_new2
integer x = 539
integer y = 276
integer width = 457
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
boolean focusrectangle = false
end type

