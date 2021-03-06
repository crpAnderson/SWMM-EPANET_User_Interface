; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "EPANET-UI"
#define MyAppVersion "MTP 2"
#define MyAppPublisher "RESPEC"
#define MyAppURL "https://github.com/USEPA/EPANET-EPANET_User_Interface/"
#define MyAppExeName "frmMainEPANET.exe"
;Python folder to install Qt Help Assistant from
#define pyLibrary "C:\Users\Mark\Anaconda2\Library" 

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{09DD91DE-8671-4914-AD85-69A2ED7007D1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=output
OutputBaseFilename=EPANET-UI-MTP2
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "dist\frmMainEPANET\*";                             DestDir: "{app}";                      Flags: ignoreversion recursesubdirs
Source: "epanet.qch";                                       DestDir: "{app}";                      Flags: ignoreversion
Source: "epanet.qhc";                                       DestDir: "{app}";                      Flags: ignoreversion

;Files needed for Qt Help Assistant to run as our help viewer
Source: "{#pyLibrary}\bin\assistant.exe";               DestDir: "{app}";                      Flags: ignoreversion
Source: "{#pyLibrary}\bin\QtHelp4.dll";                 DestDir: "{app}";                      Flags: ignoreversion
Source: "{#pyLibrary}\bin\QtCLucene4.dll";              DestDir: "{app}";                      Flags: ignoreversion
Source: "{#pyLibrary}\bin\phonon4.dll";                 DestDir: "{app}";                      Flags: ignoreversion
Source: "{#pyLibrary}\plugins\sqldrivers\qsqlite4.dll"; DestDir: "{app}\plugins\sqldrivers";   Flags: ignoreversion
Source: "{#pyLibrary}\plugins\imageformats\*";          DestDir: "{app}\plugins\imageformats"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

