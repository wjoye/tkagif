%{
%}

#include coords.tin

%start cropsend

%token 3D_
%token LOCK_

%%

#include coords.trl

cropsend : {ProcessSendCmdCurrent frame "get crop center physical fk5 degrees physical degrees"}
 | coordsys {ProcessSendCmdCurrent frame "get crop center $1 fk5 degrees $1 degrees"}

 | wcssys {ProcessSendCmdCurrent frame "get crop center $1 fk5 degrees $1 degrees"}
 | skyframe {ProcessSendCmdCurrent frame "get crop center wcs $1 degrees wcs degrees"}

 | wcssys skyformat
   {ProcessSendCmdCurrent frame "get crop center $1 fk5 $2 $1 degrees"}
 | skyframe skyformat
   {ProcessSendCmdCurrent frame "get crop center wcs $1 $2 wcs degrees"}

 | wcssys skyformat rformat
   {ProcessSendCmdCurrent frame "get crop center $1 fk5 $2 $1 $3"}
 | skyframe skyformat rformat
   {ProcessSendCmdCurrent frame "get crop center wcs $1 $2 wcs $3"}

 | wcssys skyframe skyformat rformat
   {ProcessSendCmdCurrent frame "get crop center $1 $2 $3 $1 $4"}

 | 3D_ 3d
 | LOCK_ {ProcessSendCmdGet crop lock}
 ;

3d : {ProcessSendCmdCurrent frame "get crop 3d image"}
 | coordsys {ProcessSendCmdCurrent frame "get crop 3d $1"}
 | wcssys {ProcessSendCmdCurrent frame "get crop 3d $1"}
 ;

%%

proc cropsend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_
     
     ParserError $msg $yycnt $yy_current_buffer $index_
}