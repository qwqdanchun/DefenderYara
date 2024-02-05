
rule Trojan_Win32_Tibs_U{
	meta:
		description = "Trojan:Win32/Tibs.U,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 c7 45 fc 61 62 } //01 00 
		$a_01_1 = {81 45 08 34 12 00 00 } //01 00 
		$a_01_2 = {44 72 69 76 65 00 00 00 53 48 46 72 65 65 4e 61 6d 65 4d 61 70 70 69 6e 67 73 00 00 00 53 48 47 } //01 00 
		$a_01_3 = {49 40 5a 00 00 00 73 74 72 65 72 72 6f 72 00 00 00 5f 43 49 61 73 69 6e 00 00 00 5f 43 49 74 61 } //00 00 
	condition:
		any of ($a_*)
 
}