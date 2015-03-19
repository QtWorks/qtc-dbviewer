; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; $Id: QtSqlView.iss 23 2006-10-10 09:26:20Z tb $

#define Version	 "0.8.0-1"
#define Version2 "0.8.0.1"

[Setup]
AppName=QtSqlView
AppVerName=QtSqlView-{#Version}
AppPublisher=Timo Bingmann
AppPublisherURL=http://idlebox.net/2006/qtsqlview/
AppSupportURL=http://idlebox.net/2006/qtsqlview/
AppUpdatesURL=http://idlebox.net/2006/qtsqlview/
DefaultDirName={pf}\QtSqlView
DefaultGroupName=QtSqlView
AllowNoIcons=true
LicenseFile=COPYING
OutputDir=.
OutputBaseFilename=QtSqlView-{#Version}-win32
Compression=lzma/ultra
SolidCompression=true
InternalCompressLevel=ultra
ShowLanguageDialog=auto
VersionInfoVersion={#Version2}
VersionInfoCompany=Timo Bingmann
VersionInfoDescription=QtSqlView Installer
VersionInfoCopyright=GPL
AppCopyright=GPL
AppVersion={#Version}
AppID={{4A8FF0AE-434D-49A9-8DA2-4E259D869557}
UninstallDisplayIcon={app}\QtSqlView.exe
UninstallDisplayName=QtSqlView

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Files]
Source: src\release\QtSqlView.exe; DestDir: {app}; Flags: ignoreversion
Source: lib\mingwm10.dll; DestDir: {app}; Flags: ignoreversion
Source: lib\libmysql.dll; DestDir: {app}; Flags: ignoreversion
Source: lib\QtCore4.dll; DestDir: {app}; Flags: ignoreversion
Source: lib\QtGui4.dll; DestDir: {app}; Flags: ignoreversion
Source: lib\QtSql4.dll; DestDir: {app}; Flags: ignoreversion
Source: lib\sqldrivers\*; DestDir: {app}\sqldrivers; Flags: ignoreversion recursesubdirs createallsubdirs
Source: README; DestDir: {app}; DestName: README.txt; Flags: isreadme ignoreversion
Source: INSTALL; DestDir: {app}; DestName: INSTALL.txt; Flags: ignoreversion
Source: COPYING; DestDir: {app}; DestName: COPYING.txt; Flags: ignoreversion
Source: AUTHORS; DestDir: {app}; DestName: AUTHORS.txt; Flags: ignoreversion
Source: VERSIONS; DestDir: {app}; DestName: VERSIONS.txt; Flags: ignoreversion

[Icons]
Name: {group}\QtSqlView; Filename: {app}\QtSqlView.exe
Name: {group}\{cm:UninstallProgram,QtSqlView}; Filename: {uninstallexe}
Name: {userdesktop}\QtSqlView; Filename: {app}\QtSqlView.exe; Tasks: desktopicon; IconIndex: 0; Languages: 

[Run]
Filename: {app}\QtSqlView.exe; Description: {cm:LaunchProgram,QtSqlView}; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCU; Subkey: Software\idlebox.net\QtSqlView; Flags: uninsdeletekey; Tasks: ; Languages: 
