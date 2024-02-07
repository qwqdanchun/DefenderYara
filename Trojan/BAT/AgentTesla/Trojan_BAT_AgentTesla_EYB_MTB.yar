
rule Trojan_BAT_AgentTesla_EYB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EYB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {47 00 49 00 54 00 39 00 45 00 52 00 67 00 34 00 57 00 61 00 67 00 34 00 57 00 64 00 79 00 42 00 53 00 5a 00 69 00 42 00 43 00 64 00 76 00 35 00 6d 00 62 00 68 00 4e 00 47 00 49 00 74 00 46 00 6d 00 63 00 6e 00 39 00 6d 00 63 00 77 00 42 00 79 00 } //0a 00  GIT9ERg4Wag4WdyBSZiBCdv5mbhNGItFmcn9mcwBy
		$a_01_1 = {22 06 41 00 51 00 5a 00 41 00 30 00 47 00 41 00 68 00 42 00 67 00 54 00 41 00 77 00 47 00 41 00 68 00 42 00 67 00 62 00 41 00 49 00 48 00 41 00 6c 00 42 00 41 00 64 00 41 00 34 00 47 00 41 00 4a 00 42 00 51 00 22 06 34 00 22 06 38 00 22 06 22 06 } //01 00  آAQZA0GAhBgTAwGAhBgbAIHAlBAdA4GAJBQآ4آ8آآ
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //01 00  StrReverse
		$a_01_3 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //01 00  FromBase64String
		$a_01_4 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 4d 00 65 00 6d 00 62 00 65 00 72 00 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}