$PBExportHeader$tras_prc.sru
forward
global type tras_prc from transaction
end type
end forward

global type tras_prc from transaction
end type
global tras_prc tras_prc

type prototypes
function string select_test6_3() RPCFUNC 

end prototypes

on tras_prc.create
call super::create
TriggerEvent( this, "constructor" )
end on

on tras_prc.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;//
end event

