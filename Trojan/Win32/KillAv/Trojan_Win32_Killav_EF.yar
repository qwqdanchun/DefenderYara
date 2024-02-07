
rule Trojan_Win32_Killav_EF{
	meta:
		description = "Trojan:Win32/Killav.EF,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 00 41 00 56 00 50 00 43 00 43 00 2e 00 45 00 58 00 45 00 2c 00 5f 00 41 00 56 00 50 00 4d 00 2c 00 5f 00 41 00 56 00 50 00 4d 00 2e 00 45 00 58 00 45 00 2c 00 41 00 63 00 6b 00 57 00 69 00 6e 00 33 00 32 00 2c 00 41 00 63 00 6b 00 57 00 69 00 6e 00 33 00 32 00 2c 00 41 00 43 00 4b 00 57 00 49 00 4e 00 33 00 32 00 2c 00 41 00 63 00 6b 00 57 00 69 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 2c 00 41 00 63 00 6b 00 57 00 69 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 2c 00 } //01 00  _AVPCC.EXE,_AVPM,_AVPM.EXE,AckWin32,AckWin32,ACKWIN32,AckWin32.exe,AckWin32.exe,
		$a_01_1 = {41 56 4b 69 6c 6c 5f 42 79 5f 54 48 69 61 47 30 34 45 76 65 52 00 63 73 72 73 73 } //01 00 
		$a_01_2 = {00 4d 69 73 74 61 4b 69 6c 6c 65 72 35 35 30 00 } //01 00  䴀獩慴楋汬牥㔵0
		$a_01_3 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_4 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //00 00  OpenProcess
	condition:
		any of ($a_*)
 
}