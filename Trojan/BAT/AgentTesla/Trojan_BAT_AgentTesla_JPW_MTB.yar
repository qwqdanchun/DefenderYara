
rule Trojan_BAT_AgentTesla_JPW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JPW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_1 = {46 69 6e 64 52 64 61 73 64 73 65 73 6f 75 72 63 65 } //01 00  FindRdasdsesource
		$a_01_2 = {67 66 68 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 } //01 00  gfhhfhfhfhfhfhfhfhfhfhfh
		$a_01_3 = {67 66 64 66 66 66 66 66 66 67 } //01 00  gfdffffffg
		$a_01_4 = {66 73 64 66 73 64 66 73 64 } //01 00  fsdfsdfsd
		$a_01_5 = {23 66 73 64 66 64 73 66 2e 64 6c 6c 23 } //01 00  #fsdfdsf.dll#
		$a_01_6 = {23 66 73 64 66 73 64 2e 64 6c 6c 23 } //01 00  #fsdfsd.dll#
		$a_01_7 = {23 67 64 66 67 23 } //01 00  #gdfg#
		$a_01_8 = {23 67 68 66 68 2e 64 6c 6c 23 } //01 00  #ghfh.dll#
		$a_01_9 = {23 66 73 64 2e 64 6c 6c 23 } //00 00  #fsd.dll#
	condition:
		any of ($a_*)
 
}