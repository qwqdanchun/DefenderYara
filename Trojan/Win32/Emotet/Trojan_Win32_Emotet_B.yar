
rule Trojan_Win32_Emotet_B{
	meta:
		description = "Trojan:Win32/Emotet.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 28 5e 09 75 90 01 01 e8 90 01 04 e8 90 01 04 85 c0 74 90 01 01 e8 90 09 06 00 81 3d 90 00 } //01 00 
		$a_03_1 = {63 61 70 33 32 90 02 05 62 6f 6f 74 90 02 05 62 69 6f 73 90 02 05 61 75 64 69 6f 90 00 } //01 00 
		$a_00_2 = {25 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 25 00 63 00 25 00 63 00 25 00 63 00 25 00 53 00 2e 00 65 00 78 00 65 00 } //00 00  %s\Microsoft\%c%c%c%S.exe
	condition:
		any of ($a_*)
 
}