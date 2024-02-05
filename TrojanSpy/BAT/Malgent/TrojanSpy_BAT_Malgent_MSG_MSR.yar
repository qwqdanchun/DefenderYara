
rule TrojanSpy_BAT_Malgent_MSG_MSR{
	meta:
		description = "TrojanSpy:BAT/Malgent.MSG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_81_0 = {43 79 6d 75 6c 61 74 65 53 63 72 65 65 6e 53 68 6f 74 54 72 6f 6a 61 6e 2e 70 64 62 } //01 00 
		$a_00_1 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2f 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 20 00 22 00 43 00 79 00 6d 00 75 00 6c 00 61 00 74 00 65 00 5f 00 25 00 61 00 74 00 74 00 61 00 63 00 6b 00 5f 00 69 00 64 00 25 00 22 00 20 00 25 00 73 00 74 00 61 00 67 00 65 00 72 00 5f 00 6c 00 69 00 6e 00 6b 00 25 00 20 00 22 00 25 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 64 00 61 00 74 00 61 00 5f 00 70 00 61 00 74 00 68 00 25 00 5c 00 25 00 66 00 69 00 6c 00 65 00 5f 00 74 00 6f 00 5f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 25 00 } //01 00 
		$a_00_2 = {69 00 65 00 78 00 20 00 28 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //00 00 
	condition:
		any of ($a_*)
 
}