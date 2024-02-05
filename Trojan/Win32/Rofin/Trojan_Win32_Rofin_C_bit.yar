
rule Trojan_Win32_Rofin_C_bit{
	meta:
		description = "Trojan:Win32/Rofin.C!bit,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {61 64 2e 7a 7a 69 6e 66 6f 72 2e 63 6e 2f 73 74 61 74 69 63 2f 68 6f 74 6b 65 79 2e 74 78 74 } //01 00 
		$a_01_1 = {66 31 62 72 6f 77 73 65 72 2e 65 78 65 } //01 00 
		$a_01_2 = {63 73 63 33 2d 32 30 31 30 } //01 00 
		$a_01_3 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 45 6e 76 2e 69 6e 69 } //00 00 
	condition:
		any of ($a_*)
 
}