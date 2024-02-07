
rule Trojan_Win32_NetWire_BD_{
	meta:
		description = "Trojan:Win32/NetWire.BD!!NetWire.gen!BD,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 0c 00 00 01 00 "
		
	strings :
		$a_81_0 = {70 69 6e 67 20 31 39 32 2e 30 2e 32 2e 32 20 2d 6e 20 31 20 2d 77 20 25 64 20 3e 6e 75 6c 20 32 3e 26 31 } //01 00  ping 192.0.2.2 -n 1 -w %d >nul 2>&1
		$a_81_1 = {63 61 6c 6c 20 3a 64 65 6c 65 74 65 53 65 6c 66 26 65 78 69 74 20 2f 62 } //01 00  call :deleteSelf&exit /b
		$a_81_2 = {3a 64 65 6c 65 74 65 53 65 6c 66 } //01 00  :deleteSelf
		$a_81_3 = {73 74 61 72 74 20 2f 62 20 22 22 20 63 6d 64 20 2f 63 20 64 65 6c 20 22 25 25 } //01 00  start /b "" cmd /c del "%%
		$a_81_4 = {53 4f 46 54 57 41 52 45 5c 4e 65 74 57 69 72 65 } //01 00  SOFTWARE\NetWire
		$a_81_5 = {5b 4c 6f 67 20 53 74 61 72 74 65 64 5d 20 2d 20 5b } //01 00  [Log Started] - [
		$a_81_6 = {5b 44 30 30 57 67 20 6d 64 38 35 5d } //01 00  [D00Wg md85]
		$a_81_7 = {5b 44 30 30 57 67 20 75 73 5d } //01 00  [D00Wg us]
		$a_81_8 = {5b 4d 59 30 57 69 69 20 6d 57 59 77 5d } //01 00  [MY0Wii mWYw]
		$a_81_9 = {53 65 61 4d 6f 6e 6b 65 79 } //01 00  SeaMonkey
		$a_81_10 = {65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 } //01 00  encryptedUsername
		$a_81_11 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //00 00  encryptedPassword
	condition:
		any of ($a_*)
 
}