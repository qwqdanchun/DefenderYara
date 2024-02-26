
rule Backdoor_BAT_Remcos_AATF_MTB{
	meta:
		description = "Backdoor:BAT/Remcos.AATF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 04 00 "
		
	strings :
		$a_03_0 = {0a 05 03 02 8e 69 6f 90 01 01 00 00 0a 0a 06 28 90 01 01 00 00 0a 00 06 0b 2b 00 07 2a 90 00 } //01 00 
		$a_01_1 = {23 00 23 00 43 00 23 00 23 00 72 00 23 00 65 00 23 00 23 00 61 00 23 00 74 00 23 00 23 00 65 00 23 00 23 00 49 00 23 00 23 00 6e 00 23 00 73 00 23 00 74 00 23 00 23 00 61 00 23 00 23 00 6e 00 23 00 63 00 23 00 23 00 65 00 23 00 23 00 } //01 00  ##C##r#e##a#t##e##I##n#s#t##a##n#c##e##
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}