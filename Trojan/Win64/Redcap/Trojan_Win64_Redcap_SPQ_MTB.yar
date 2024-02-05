
rule Trojan_Win64_Redcap_SPQ_MTB{
	meta:
		description = "Trojan:Win64/Redcap.SPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_81_0 = {42 6f 69 73 67 69 6f 65 73 67 6a 65 73 67 67 } //01 00 
		$a_81_1 = {4f 69 6f 61 67 6a 69 6f 73 65 6a 67 68 65 } //01 00 
		$a_81_2 = {55 69 6f 65 73 6f 69 67 73 65 69 67 68 73 65 68 6a 69 } //00 00 
	condition:
		any of ($a_*)
 
}