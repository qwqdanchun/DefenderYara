
rule Backdoor_BAT_Mokes_MBP_MTB{
	meta:
		description = "Backdoor:BAT/Mokes.MBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {66 73 66 68 72 67 64 64 64 66 66 64 66 66 66 66 6b 68 73 6a 64 } //01 00  fsfhrgdddffdffffkhsjd
		$a_81_1 = {6e 68 66 66 73 6b 64 73 66 6b 64 66 64 64 61 66 72 66 66 64 64 68 66 73 63 66 66 64 66 } //01 00  nhffskdsfkdfddafrffddhfscffdf
		$a_81_2 = {73 64 66 66 66 64 73 73 68 66 66 66 64 68 66 } //01 00  sdfffdsshfffdhf
		$a_01_3 = {66 00 66 00 66 00 66 00 66 00 66 00 66 00 } //01 00  fffffff
		$a_81_4 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}