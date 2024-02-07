
rule TrojanSpy_Win32_Logsnif_gen_D{
	meta:
		description = "TrojanSpy:Win32/Logsnif.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,ffffffe6 00 ffffffe1 00 1e 00 00 64 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //32 00  SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {52 61 76 4d 6f 6e 48 65 6c 70 } //32 00  RavMonHelp
		$a_00_2 = {73 6f 75 6c 2e 65 78 65 } //01 00  soul.exe
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_4 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //05 00  Content-Type: application/x-www-form-urlencoded
		$a_01_5 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  ReadProcessMemory
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  WriteProcessMemory
		$a_01_7 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_01_8 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //01 00  InternetOpenA
		$a_00_9 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //01 00  InternetConnectA
		$a_01_10 = {48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 41 } //01 00  HttpSendRequestA
		$a_00_11 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //01 00  HttpOpenRequestA
		$a_01_12 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_01_13 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  Toolhelp32ReadProcessMemory
		$a_00_14 = {61 76 70 63 63 2e } //01 00  avpcc.
		$a_00_15 = {5f 61 76 70 6d 2e } //01 00  _avpm.
		$a_00_16 = {61 76 70 33 32 2e } //01 00  avp32.
		$a_00_17 = {61 6e 74 69 76 69 72 75 73 2e } //01 00  antivirus.
		$a_00_18 = {66 73 61 76 2e 65 78 65 } //01 00  fsav.exe
		$a_00_19 = {6e 6f 72 74 6f 6e 2e } //01 00  norton.
		$a_00_20 = {6d 73 6d 70 65 6e 67 2e } //01 00  msmpeng.
		$a_00_21 = {6d 73 6d 70 73 76 63 2e } //01 00  msmpsvc.
		$a_00_22 = {32 2e 30 2e 30 2e 31 } //01 00  2.0.0.1
		$a_00_23 = {26 73 65 72 76 65 72 73 3d } //01 00  &servers=
		$a_00_24 = {26 75 73 65 72 6e 61 6d 65 3d } //01 00  &username=
		$a_00_25 = {26 70 61 73 73 77 6f 72 64 3d } //01 00  &password=
		$a_00_26 = {26 72 77 6d 63 3d } //01 00  &rwmc=
		$a_00_27 = {26 70 61 73 73 6c 6f 63 6b 3d } //01 00  &passlock=
		$a_00_28 = {6d 61 69 6c 2e 61 73 70 } //01 00  mail.asp
		$a_01_29 = {53 65 6e 64 20 4f 4b 21 } //00 00  Send OK!
	condition:
		any of ($a_*)
 
}