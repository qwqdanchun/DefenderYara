
rule Trojan_BAT_AgentTesla_JPQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {76 65 6e 65 7a 75 65 6c 61 5f 34 38 78 34 38 5f 33 33 } //01 00  venezuela_48x48_33
		$a_81_1 = {76 69 65 74 6e 61 6d 5f 34 38 78 34 38 5f 33 33 } //01 00  vietnam_48x48_33
		$a_81_2 = {76 69 72 67 69 6e 5f 34 38 78 34 38 5f 33 33 } //01 00  virgin_48x48_33
		$a_81_3 = {77 61 6c 65 73 5f 34 38 78 34 38 5f 33 33 } //01 00  wales_48x48_33
		$a_81_4 = {77 61 6c 6c 69 73 5f 34 38 78 34 38 5f 33 33 } //01 00  wallis_48x48_33
		$a_81_5 = {77 65 73 74 65 72 6e 5f 34 38 78 34 38 5f 33 33 } //01 00  western_48x48_33
		$a_81_6 = {79 65 6d 65 6e 5f 34 38 78 34 38 5f 33 33 } //01 00  yemen_48x48_33
		$a_81_7 = {7a 61 6d 62 69 61 5f 34 38 78 34 38 5f 33 33 } //01 00  zambia_48x48_33
		$a_81_8 = {7a 69 6d 62 61 62 77 65 5f 34 38 78 34 38 5f 33 33 } //01 00  zimbabwe_48x48_33
		$a_81_9 = {47 5a 69 70 53 74 72 65 61 6d } //00 00  GZipStream
	condition:
		any of ($a_*)
 
}