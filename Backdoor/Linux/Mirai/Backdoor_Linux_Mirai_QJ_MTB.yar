
rule Backdoor_Linux_Mirai_QJ_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.QJ!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {10 00 00 02 ae 22 00 10 ae 23 00 10 26 62 00 08 } //01 00 
		$a_00_1 = {14 a2 00 0b 00 00 00 00 24 e7 00 01 14 e5 00 0b 00 00 28 21 03 a6 10 21 80 43 00 39 24 02 00 41 14 62 00 0c 03 a6 10 21 10 00 00 0a 24 08 00 01 10 00 00 02 } //01 00 
		$a_00_2 = {10 00 00 07 00 a2 20 21 15 00 00 05 24 84 00 01 8c c2 00 00 00 00 00 00 24 42 00 01 ac c2 00 00 90 82 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}