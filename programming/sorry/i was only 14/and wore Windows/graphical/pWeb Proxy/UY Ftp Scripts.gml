#define dll_init

global._download=external_define2('U.Y.ftp.dll','download',ty_string,ty_string,ty_real);
global._FtpUpload=external_define2('U.Y.ftp.dll','FtpUpload',ty_string,ty_string,ty_real);
global._FtpDeInit=external_define('U.Y.ftp.dll','FtpDeInit',ty_real,ty_real,ty_real);
global._FtpInit=external_define3('U.Y.ftp.dll','FtpInit',ty_string,ty_string,ty_string,ty_real);
global._FtpDelete=external_define1('U.Y.ftp.dll','FtpDelete',ty_string,ty_real);
global._FtpNewDir=external_define1('U.Y.ftp.dll','FtpNewDir',ty_string,ty_real);
global._FtpRename=external_define2('U.Y.ftp.dll','FtpRename',ty_string,ty_string,ty_real);
global._FtpDeleteDir=external_define1('U.Y.ftp.dll','FtpDeleteDir',ty_string,ty_real);
global._FtpSetDir=external_define1('U.Y.ftp.dll','FtpSetDir',ty_string,ty_real);

#define download
return external_call2(global._download, argument0,argument1)
#define FtpDeInit
return external_call(global._FtpDeInit)
#define FtpInit
return external_call3(global._FtpInit,argument0,argument1,argument2)
#define FtpUpload
return external_call2(global._FtpUpload, argument0,argument1)
#define FtpDelete
return external_call1(global._FtpDelete,argument0)
#define FtpNewDir
return external_call1(global._FtpNewDir,argument0)
#define FtpRename
return external_call2(global._FtpRename,argument0,argument1)
#define FtpDeleteDir
return external_call1(global._FtpDeleteDir,argument0)
#define FtpSetDir
return external_call1(global._FtpSetDir,argument0)
