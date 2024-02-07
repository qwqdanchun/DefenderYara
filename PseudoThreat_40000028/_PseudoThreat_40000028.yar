
rule _PseudoThreat_40000028{
	meta:
		description = "!PseudoThreat_40000028,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0d 00 00 01 00 "
		
	strings :
		$a_00_0 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 } //01 00  if exist "%s" goto 
		$a_00_1 = {69 66 20 65 78 69 73 74 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 22 20 67 6f 74 6f 20 } //01 00  if exist "C:\myapp.exe" goto 
		$a_00_2 = {64 65 6c 20 22 25 73 22 } //01 00  del "%s"
		$a_00_3 = {64 65 6c 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 22 } //01 00  del "C:\myapp.exe"
		$a_00_4 = {25 73 25 69 2e 62 61 74 } //01 00  %s%i.bat
		$a_02_5 = {64 65 6c 20 22 43 3a 5c 54 45 4d 50 5c 90 02 04 2e 62 61 74 90 00 } //01 00 
		$a_01_6 = {63 6d 64 20 2f 63 20 73 74 61 72 74 20 2f 6d 69 6e } //01 00  cmd /c start /min
		$a_00_7 = {6d 6f 64 65 6d } //01 00  modem
		$a_00_8 = {52 41 53 41 50 49 33 32 2e 64 6c 6c } //01 00  RASAPI32.dll
		$a_00_9 = {53 4f 46 54 57 41 52 45 5c 43 61 73 69 6f 70 } //01 00  SOFTWARE\Casiop
		$a_01_10 = {47 65 74 41 64 61 70 74 65 72 73 49 6e 66 6f } //01 00  GetAdaptersInfo
		$a_00_11 = {52 61 73 45 6e 75 6d 44 65 76 69 63 65 73 41 } //01 00  RasEnumDevicesA
		$a_00_12 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //00 00  ShellExecuteA
	condition:
		any of ($a_*)
 
}