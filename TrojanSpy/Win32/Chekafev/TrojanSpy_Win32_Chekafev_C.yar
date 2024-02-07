
rule TrojanSpy_Win32_Chekafev_C{
	meta:
		description = "TrojanSpy:Win32/Chekafev.C,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 0d 00 00 02 00 "
		
	strings :
		$a_00_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 5a 00 68 00 75 00 44 00 6f 00 6e 00 67 00 46 00 61 00 6e 00 67 00 79 00 75 00 2e 00 65 00 78 00 65 00 } //02 00  taskkill /f /im ZhuDongFangyu.exe
		$a_00_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 31 00 20 00 26 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 } //02 00  cmd /c ping 127.0.0.1 -n 1 && del "
		$a_01_2 = {67 00 65 00 74 00 2e 00 61 00 73 00 70 00 3f 00 6d 00 61 00 63 00 3d 00 } //02 00  get.asp?mac=
		$a_01_3 = {26 00 6d 00 61 00 6b 00 65 00 64 00 61 00 74 00 65 00 3d 00 } //02 00  &makedate=
		$a_01_4 = {26 00 63 00 6f 00 6d 00 70 00 75 00 74 00 3d 00 } //02 00  &comput=
		$a_01_5 = {26 00 76 00 65 00 72 00 3d 00 } //02 00  &ver=
		$a_01_6 = {26 00 75 00 73 00 65 00 72 00 69 00 64 00 3d 00 } //01 00  &userid=
		$a_00_7 = {77 00 78 00 73 00 79 00 6e 00 63 00 6c 00 69 00 2e 00 65 00 78 00 65 00 } //01 00  wxsyncli.exe
		$a_00_8 = {63 00 6c 00 73 00 6d 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  clsmn.exe
		$a_00_9 = {72 00 7a 00 78 00 64 00 77 00 63 00 6c 00 74 00 70 00 6c 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  rzxdwcltplug.exe
		$a_00_10 = {6e 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  nbclient.exe
		$a_00_11 = {65 00 77 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00  eway.exe
		$a_00_12 = {62 00 61 00 72 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  barclient.exe
	condition:
		any of ($a_*)
 
}