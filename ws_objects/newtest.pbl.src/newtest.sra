$PBExportHeader$newtest.sra
$PBExportComments$Generated Application Object
forward
global type newtest from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables

end variables

global type newtest from application
string appname = "newtest"
end type
global newtest newtest

on newtest.create
appname = "newtest"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on newtest.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

