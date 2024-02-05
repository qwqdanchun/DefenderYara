
rule Trojan_Win32_Mdrop_A{
	meta:
		description = "Trojan:Win32/Mdrop.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 52 28 89 10 6a 40 68 00 30 00 00 } //0a 00 
		$a_03_1 = {00 ef be ad de 74 6e c7 05 90 09 05 00 81 3d 90 01 0f 00 ef be ad de 90 02 40 c7 45 90 01 01 0d 00 00 80 90 00 } //01 00 
		$a_03_2 = {8b 45 f8 3b 45 0c 7d 37 8b 45 f8 90 01 2c 8d 45 f8 83 00 02 eb c1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}