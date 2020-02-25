$PBExportHeader$w_pgdatatype.srw
forward
global type w_pgdatatype from window
end type
type sle_id from singlelineedit within w_pgdatatype
end type
type cb_5 from commandbutton within w_pgdatatype
end type
type sle_1 from singlelineedit within w_pgdatatype
end type
type cb_4 from commandbutton within w_pgdatatype
end type
type cb_3 from commandbutton within w_pgdatatype
end type
type cb_2 from commandbutton within w_pgdatatype
end type
type cb_1 from commandbutton within w_pgdatatype
end type
type dw_1 from datawindow within w_pgdatatype
end type
end forward

global type w_pgdatatype from window
integer width = 4261
integer height = 1696
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_id sle_id
cb_5 cb_5
sle_1 sle_1
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_pgdatatype w_pgdatatype

on w_pgdatatype.create
this.sle_id=create sle_id
this.cb_5=create cb_5
this.sle_1=create sle_1
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.sle_id,&
this.cb_5,&
this.sle_1,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_pgdatatype.destroy
destroy(this.sle_id)
destroy(this.cb_5)
destroy(this.sle_1)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type sle_id from singlelineedit within w_pgdatatype
integer x = 2939
integer y = 1420
integer width = 457
integer height = 132
integer taborder = 50
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
end type

type cb_5 from commandbutton within w_pgdatatype
integer x = 2377
integer y = 1396
integer width = 457
integer height = 132
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "pro_2par"
end type

event clicked;string		ipr_test,ls_name,ls_string,	ls_par
Long		ll_id
Integer		ll_Input_id
ls_par	=	sle_1.text
ll_Input_id	=	Integer(sle_id.text)
declare ipr_test procedure for select_test6_4 data= :ls_par, id = :ll_Input_id;
//declare ipr_test procedure for select_test6 data= :ls_par;

//DECLARE ipr_test PROCEDURE FOR public.select_test6 (:ls_par) ;

//DECLARE ipr_test PROCEDURE FOR public.select_test6_2  (data := 'test' ) ;
//
//DECLARE ipr_test PROCEDURE FOR public.select_test6_2  data = 'test'  ;

execute ipr_test;
fetch ipr_test into :ll_id, :ls_name;
Messagebox ('', String(sqlca.sqlcode))
do while sqlca.sqlcode = 0
	ls_string += '     ' + string(ll_id) + '     ' + ls_name + '~r~n'
	fetch ipr_test into :ll_id, :ls_name;
loop
close ipr_test;
Messagebox ('',ls_string)
end event

type sle_1 from singlelineedit within w_pgdatatype
integer x = 2926
integer y = 1240
integer width = 754
integer height = 132
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_4 from commandbutton within w_pgdatatype
integer x = 2368
integer y = 1236
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "pro_parm"
end type

event clicked;string		ipr_test,ls_name,ls_string,	ls_par
Long		ll_id
ls_par	=	sle_1.text
declare ipr_test procedure for select_test6 data= :ls_par;
//DECLARE ipr_test PROCEDURE FOR public.select_test6 (:ls_par) ;

//DECLARE ipr_test PROCEDURE FOR public.select_test6_2  (data := 'test' ) ;
//
//DECLARE ipr_test PROCEDURE FOR public.select_test6_2  data = 'test'  ;

execute ipr_test;
fetch ipr_test into :ll_id, :ls_name;
Messagebox ('', String(sqlca.sqlcode))
do while sqlca.sqlcode = 0
	ls_string += '     ' + string(ll_id) + '     ' + ls_name + '~r~n'
	fetch ipr_test into :ll_id, :ls_name;
loop
close ipr_test;
Messagebox ('',ls_string)
end event

type cb_3 from commandbutton within w_pgdatatype
integer x = 1783
integer y = 1224
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "procedure"
end type

event clicked;
string		ipr_test,ls_name,ls_string
Long		ll_id
declare ipr_test procedure for select_test6_3;
execute ipr_test;
fetch ipr_test into :ll_id, :ls_name;
do while sqlca.sqlcode = 0
	ls_string += '     ' + string(ll_id) + '     ' + ls_name + '~r~n'
	fetch ipr_test into :ll_id, :ls_name;
loop
close ipr_test;
Messagebox ('',ls_string)
end event

type cb_2 from commandbutton within w_pgdatatype
integer x = 1175
integer y = 1216
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "select"
end type

event clicked;boolean		lbl_boolean
String			ls_boolean
SELECT test1.boolean INTO:lbl_boolean FROM test1 WHERE test1.test = 1;

If	SQLCA.SQLCode	<>	0	Then
	MessageBox (String(SQLCA.SQLCode),SQLCA.SQLERRTEXT)
	Return
End	If

MessageBox("",String	(lbl_boolean))


SELECT test1.boolean INTO:ls_boolean FROM test1 WHERE test1.test = 1;

If	SQLCA.SQLCode	<>	0	Then
	MessageBox (String(SQLCA.SQLCode),SQLCA.SQLERRTEXT)
	Return
End	If

MessageBox("",ls_boolean)
end event

type cb_1 from commandbutton within w_pgdatatype
integer x = 475
integer y = 1256
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
//<<<<<<< HEAD
string text = "test12"
//=======
string text = "none"
//>>>>>>> master
end type

event clicked;String		ls_boolean
ls_boolean	=	dw_1.GetItemString(1,'boolean')
messagebox('',ls_boolean)
end event

type dw_1 from datawindow within w_pgdatatype
integer x = 37
integer y = 36
integer width = 4032
integer height = 1112
integer taborder = 10
string dataobject = "d_pgdatatype"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;// Profile PSUsertest6
SQLCA.DBMS = "TRACE ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=PostgreSQLTestUser;UID=postgres;PWD=appeon',StripParmNames='Yes'"

Connect;

If	SQLCA.SQLCode <>	0	Then	
	Messagebox(string(SQLCA.SQLCode), sqlca.sqlerrtext)
	Return	
End	If

This.SetTransObject(SQLCA)
This.Retrieve()
end event

