
rule TrojanSpy_BAT_Popclik_A{
	meta:
		description = "TrojanSpy:BAT/Popclik.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 4d 5f 4b 45 59 55 50 00 57 4d 5f 4b 45 59 44 4f 57 4e 00 57 4d 5f 53 59 53 4b 45 59 44 4f 57 4e 00 57 4d 5f 53 59 53 4b 45 59 55 50 00 } //01 00 
		$a_01_1 = {2f 00 3f 00 6b 00 77 00 3d 00 74 00 72 00 61 00 63 00 6b 00 } //01 00 
		$a_01_2 = {2f 00 74 00 6d 00 70 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {5c 77 6f 72 6b 5c 63 6f 6d 70 61 6e 69 65 73 5c 63 68 61 73 65 70 72 6f 67 72 61 6d 73 5c 61 64 6c 65 65 74 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}