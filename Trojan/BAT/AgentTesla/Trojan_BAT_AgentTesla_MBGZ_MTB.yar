
rule Trojan_BAT_AgentTesla_MBGZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBGZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 00 4e 00 37 00 34 00 36 00 35 00 35 00 32 00 42 00 31 00 36 00 33 00 46 00 36 00 46 00 43 00 35 00 46 } //0a 00 
		$a_01_1 = {44 00 4e 00 37 00 34 00 36 00 35 00 35 00 32 00 42 00 31 00 36 00 33 00 35 00 39 00 46 00 39 00 45 00 33 } //01 00 
		$a_01_2 = {63 00 68 00 72 00 6f 00 6d 00 65 00 4e 00 6f 00 74 00 45 00 6e 00 63 00 6f 00 64 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  chromeNotEncode.exe
		$a_01_3 = {77 ff b7 3f 09 1f 00 00 00 fa 25 33 00 16 c4 00 01 } //00 00 
	condition:
		any of ($a_*)
 
}