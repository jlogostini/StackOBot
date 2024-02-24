#define MyAppName "Stack-O-Bot"
#define MyAppVersion "1.2.0"
#define MyAppPublisher "Epic Games, Inc."
#define MyAppURL "https://github.com/jlogostini/StackOBot"
#define MyAppExeName "StackOBot.exe"

[Setup]
AppId={{2A9577B5-4F95-45A8-04CD-7F9205E9C7ED}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName="C:\Program Files (x86)\Steam\steamapps\common\{#MyAppName} NSB"
DisableProgramGroupPage=yes
OutputDir=Build\Windows\Installer
OutputBaseFilename="Stack-O-Bot Installer"
SetupIconFile=Build\Windows\Application.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Build\Windows\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "Build\Windows\Application.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "Build\Windows\Engine\*"; DestDir: "{app}\Engine"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Build\Windows\StackOBot\*"; DestDir: "{app}\StackOBot"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent