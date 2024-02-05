
rule Backdoor_AndroidOS_GinMaster_B_MTB{
	meta:
		description = "Backdoor:AndroidOS/GinMaster.B!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 2f 67 61 6d 65 73 6e 73 2f 47 61 6d 65 73 6e 73 41 70 70 6c 69 63 61 74 69 6f 6e } //01 00 
		$a_01_1 = {47 61 6d 65 73 6e 73 53 65 72 76 69 63 65 } //01 00 
		$a_01_2 = {47 61 6d 65 73 6e 73 52 65 71 75 65 73 74 50 61 72 61 6d 73 } //01 00 
		$a_01_3 = {67 61 6d 65 73 6e 73 4c 4f 47 } //01 00 
		$a_01_4 = {77 65 62 46 65 65 64 56 69 65 77 50 61 72 61 6d 73 } //00 00 
	condition:
		any of ($a_*)
 
}