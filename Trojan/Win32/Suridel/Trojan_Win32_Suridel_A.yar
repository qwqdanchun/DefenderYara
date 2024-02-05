
rule Trojan_Win32_Suridel_A{
	meta:
		description = "Trojan:Win32/Suridel.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 70 79 5f 76 69 72 75 73 5f 63 61 63 68 65 } //01 00 
		$a_01_1 = {7a 61 6d 65 6e 61 5f 66 61 69 6c } //01 00 
		$a_01_2 = {6b 69 63 6b 5f 61 6e 74 69 76 69 72 75 73 } //01 00 
		$a_01_3 = {23 00 56 00 49 00 52 00 55 00 53 00 20 00 32 00 30 00 30 00 35 00 5c 00 76 00 69 00 72 00 75 00 73 00 20 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}