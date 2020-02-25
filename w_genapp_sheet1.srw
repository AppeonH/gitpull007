$PBExportHeader$w_genapp_sheet1.srw
$PBExportComments$Generated MDI Sheet #1
forward
global type w_genapp_sheet1 from w_genapp_basesheet
end type
end forward

global type w_genapp_sheet1 from w_genapp_basesheet
string tag = "Untitled for Sheet 1"
end type
global w_genapp_sheet1 w_genapp_sheet1

type variables
string ls_test

end variables
on w_genapp_sheet1.create
call super::create
end on

on w_genapp_sheet1.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

event open;call super::open;string ls_test
end event

