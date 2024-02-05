
rule Trojan_Win32_Phoxiva_A{
	meta:
		description = "Trojan:Win32/Phoxiva.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 58 42 70 4c 6e 5a 72 4c 6d 4e 76 62 53 39 74 5a 58 52 6f 62 32 51 76 64 32 46 73 62 43 35 6e 5a 58 51 2f 59 32 39 31 62 6e 51 39 4d 53 5a 76 64 32 35 6c 63 6c 39 70 5a 44 30 74 4f 44 45 35 4e 7a 49 7a 4f 44 59 3d } //01 00 
		$a_01_1 = {66 00 30 00 78 00 79 00 } //01 00 
		$a_01_2 = {3c 6b 6e 6f 63 6b 3e } //01 00 
		$a_01_3 = {3c 70 6f 72 74 3e } //01 00 
		$a_01_4 = {42 6f 74 5f 49 44 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}