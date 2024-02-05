
rule Backdoor_Win64_Remsec_A_dha{
	meta:
		description = "Backdoor:Win64/Remsec.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,3c 00 3c 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2f ce 79 27 } //0a 00 
		$a_01_1 = {7b 30 ff ff } //0a 00 
		$a_01_2 = {85 cf 00 00 } //0a 00 
		$a_01_3 = {cd 2b 00 00 } //0a 00 
		$a_01_4 = {50 61 73 73 77 6f 72 64 43 68 61 6e 67 65 4e 6f 74 69 66 79 } //0a 00 
		$a_01_5 = {49 6e 69 74 69 61 6c 69 7a 65 43 68 61 6e 67 65 4e 6f 74 69 66 79 } //00 00 
	condition:
		any of ($a_*)
 
}