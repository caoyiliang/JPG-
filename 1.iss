; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppName=JPGѹ��
AppVerName=JPGѹ�� 1.0
AppPublisher=CSoft
AppPublisherURL=��������
AppSupportURL=��������
AppUpdatesURL=��������
DefaultDirName={pf}\JPGѹ��
DefaultGroupName=JPGѹ��
AllowNoIcons=yes
Compression=lzma
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\caoyi\Desktop\JPGѹ��\JPGѹ��\bin\Release\net8.0-windows\publish\win-x86\JPGѹ��.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\caoyi\Desktop\JPGѹ��\JPGѹ��\bin\Release\net8.0-windows\publish\win-x86\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[INI]
Filename: "{app}\JPGѹ��.url"; Section: "InternetShortcut"; Key: "URL"; String: "��������"

[Icons]
Name: "{group}\JPGѹ��"; Filename: "{app}\JPGѹ��.exe"
Name: "{group}\{cm:ProgramOnTheWeb,JPGѹ��}"; Filename: "{app}\JPGѹ��.url"
Name: "{group}\{cm:UninstallProgram,JPGѹ��}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\JPGѹ��"; Filename: "{app}\JPGѹ��.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\JPGѹ��"; Filename: "{app}\JPGѹ��.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\JPGѹ��.exe"; Description: "{cm:LaunchProgram,JPGѹ��}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\JPGѹ��.url"

