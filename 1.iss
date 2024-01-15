; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppName=JPG压缩
AppVerName=JPG压缩 1.0
AppPublisher=CSoft
AppPublisherURL=宇宙联盟
AppSupportURL=宇宙联盟
AppUpdatesURL=宇宙联盟
DefaultDirName={pf}\JPG压缩
DefaultGroupName=JPG压缩
AllowNoIcons=yes
Compression=lzma
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\caoyi\Desktop\JPG压缩\JPG压缩\bin\Release\net8.0-windows\publish\win-x86\JPG压缩.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\caoyi\Desktop\JPG压缩\JPG压缩\bin\Release\net8.0-windows\publish\win-x86\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; 注意: 不要在任何共享系统文件中使用“Flags: ignoreversion”

[INI]
Filename: "{app}\JPG压缩.url"; Section: "InternetShortcut"; Key: "URL"; String: "宇宙联盟"

[Icons]
Name: "{group}\JPG压缩"; Filename: "{app}\JPG压缩.exe"
Name: "{group}\{cm:ProgramOnTheWeb,JPG压缩}"; Filename: "{app}\JPG压缩.url"
Name: "{group}\{cm:UninstallProgram,JPG压缩}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\JPG压缩"; Filename: "{app}\JPG压缩.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\JPG压缩"; Filename: "{app}\JPG压缩.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\JPG压缩.exe"; Description: "{cm:LaunchProgram,JPG压缩}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\JPG压缩.url"

