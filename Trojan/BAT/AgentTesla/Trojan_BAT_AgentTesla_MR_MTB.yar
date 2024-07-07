
rule Trojan_BAT_AgentTesla_MR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {25 16 06 07 08 09 28 90 01 0e a2 28 90 01 09 13 04 11 04 72 90 01 09 13 05 11 05 6f 90 01 04 16 9a 13 06 73 90 01 09 11 06 6f 90 01 04 14 90 09 1c 00 d0 90 01 13 14 14 17 8d 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_MR_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,30 00 30 00 09 00 00 "
		
	strings :
		$a_01_0 = {77 00 63 00 6d 00 39 00 6e 00 63 00 6d 00 46 00 74 00 49 00 47 00 4e 00 68 00 62 00 6d 00 35 00 76 00 64 00 43 00 } //10 wcm9ncmFtIGNhbm5vdC
		$a_01_1 = {57 00 49 00 50 00 6f 00 43 00 59 00 76 00 49 00 67 00 38 00 } //10 WIPoCYvIg8
		$a_01_2 = {39 00 5a 00 6a 00 38 00 62 00 4f 00 51 00 64 00 52 00 53 00 44 00 6b 00 48 00 55 00 55 00 67 00 } //10 9Zj8bOQdRSDkHUUg
		$a_01_3 = {52 65 70 6c 61 63 65 } //3 Replace
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //3 FromBase64String
		$a_01_5 = {4d 00 4e 00 4e 00 48 00 48 00 47 00 48 00 4a 00 46 00 4a 00 48 00 42 00 42 00 4e 00 4e 00 48 00 48 00 55 00 54 00 } //3 MNNHHGHJFJHBBNNHHUT
		$a_01_6 = {54 00 52 00 41 00 53 00 48 00 } //3 TRASH
		$a_01_7 = {45 00 52 00 45 00 52 00 52 00 57 00 52 00 57 00 52 00 57 00 53 00 47 00 47 00 53 00 41 00 47 00 44 00 48 00 48 00 4a 00 48 00 4a 00 42 00 4e 00 43 00 42 00 4e 00 43 00 42 00 4e 00 } //3 ERERRWRWRWSGGSAGDHHJHJBNCBNCBN
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //3 DebuggableAttribute
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*3+(#a_01_7  & 1)*3+(#a_01_8  & 1)*3) >=48
 
}