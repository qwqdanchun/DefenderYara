
rule Backdoor_AndroidOS_Ginmaster_A{
	meta:
		description = "Backdoor:AndroidOS/Ginmaster.A,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {7e 71 6a 6b 6c 47 6a 6d 76 36 7c 77 } //01 00 
		$a_01_1 = {7c 77 6f 76 74 77 79 7c 47 6b 6d 7b 7b 7d 6b 6b 36 7c 77 } //01 00 
		$a_01_2 = {6a 7d 6c 6d 6a 76 47 7b 77 76 7e 71 7f 36 7c 77 } //01 00 
		$a_01_3 = {71 76 6b 6c 79 74 74 47 74 71 6b 6c 36 7c 77 } //00 00 
	condition:
		any of ($a_*)
 
}