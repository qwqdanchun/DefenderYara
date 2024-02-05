
rule Trojan_Win32_Koutodoor_B_dll{
	meta:
		description = "Trojan:Win32/Koutodoor.B.dll!D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 64 6c 6c 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_03_1 = {68 a1 84 00 00 e8 90 01 04 83 c4 04 90 00 } //01 00 
		$a_01_2 = {6a 00 8d 04 40 8d 04 80 8d 04 80 8d 04 80 8d 04 80 8d 04 80 c1 e0 05 50 68 00 10 00 00 } //01 00 
		$a_02_3 = {6a 00 6a 00 6a 00 68 00 00 00 80 6a 00 68 00 00 00 80 68 00 00 cf 00 50 50 6a 00 ff 15 90 01 04 85 c0 75 90 01 01 c3 8b 4c 24 08 51 50 ff 15 90 01 04 b8 01 00 00 00 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}