
rule Trojan_Win32_Nombsu_A{
	meta:
		description = "Trojan:Win32/Nombsu.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2a 2e 74 78 74 00 00 00 2a 2e 78 6c 73 00 00 00 2a 2e 70 70 74 00 00 00 2a 2e 64 6f 63 } //01 00 
		$a_00_1 = {25 73 5c 6c 73 61 73 73 2e 65 78 65 22 20 75 20 2d 61 70 20 2d 68 70 25 73 20 2d 72 20 2d 74 6b 20 22 25 73 5c 70 6c 75 67 69 6e 2e 64 6c 6c } //01 00  %s\lsass.exe" u -ap -hp%s -r -tk "%s\plugin.dll
		$a_00_2 = {78 63 6f 70 79 2e 65 78 65 20 2f 73 20 2f 61 20 2f 79 20 2f 64 3a 25 73 20 25 73 5c 25 73 20 22 25 73 } //01 00  xcopy.exe /s /a /y /d:%s %s\%s "%s
		$a_02_3 = {8b ca 4f c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 ff 15 90 01 03 00 83 c4 10 83 f8 ff 5f 75 20 6a 00 68 90 01 03 00 ff 15 90 01 03 00 85 c0 75 02 5e c3 6a 06 68 90 01 03 00 ff 15 90 01 03 00 68 04 01 00 00 68 90 01 03 00 ff 15 90 01 03 00 8d 44 24 08 50 6a 00 6a 00 68 90 01 03 00 6a 00 6a 00 ff 15 90 01 03 00 83 c4 18 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}