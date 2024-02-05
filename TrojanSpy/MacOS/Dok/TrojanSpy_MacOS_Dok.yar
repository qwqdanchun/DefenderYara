
rule TrojanSpy_MacOS_Dok{
	meta:
		description = "TrojanSpy:MacOS/Dok,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {54 68 69 73 20 66 69 6c 65 20 69 73 20 70 61 63 6b 65 64 20 77 69 74 68 20 74 68 65 20 55 50 58 20 65 78 65 63 75 74 61 62 6c 65 20 70 61 63 6b 65 72 } //02 00 
		$a_00_1 = {52 79 61 6e 5f 4c 74 64 2e 53 6f 66 74 77 61 72 65 } //01 00 
		$a_00_2 = {4f 6c 65 67 20 4b 6f 73 6f 75 72 6f 76 20 28 51 39 48 5a 35 35 4d 38 35 35 29 31 } //00 00 
		$a_00_3 = {5d 04 00 00 } //ae eb 
	condition:
		any of ($a_*)
 
}