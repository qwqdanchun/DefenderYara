
rule Trojan_Win32_Redyms_A{
	meta:
		description = "Trojan:Win32/Redyms.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 2f 61 6f 6c 2f 73 65 61 72 63 68 3f 00 } //01 00 
		$a_03_1 = {8b 75 08 56 ff 15 90 01 04 8b 40 28 68 42 50 57 46 6a 01 03 c6 56 ff d0 90 00 } //01 00 
		$a_03_2 = {ff 75 08 ff 15 90 01 04 8b 40 28 03 45 08 68 42 50 57 46 6a 01 ff 75 08 ff d0 90 00 } //0a 00 
		$a_03_3 = {b8 00 01 08 84 75 05 b8 00 31 88 84 8b 57 04 6a 00 50 8b 45 90 01 01 6a 00 6a 00 6a 00 50 52 51 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}