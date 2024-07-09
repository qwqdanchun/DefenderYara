
rule Trojan_BAT_AgentTesla_ELK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ELK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {20 9e 02 00 00 da 13 05 11 05 28 ?? ?? ?? 06 28 ?? ?? ?? 06 13 06 07 11 06 28 ?? ?? ?? 06 0b } //1
		$a_01_1 = {23 00 47 00 65 00 74 00 23 00 4d 00 65 00 74 00 23 00 68 00 6f 00 64 00 } //1 #Get#Met#hod
		$a_01_2 = {42 00 23 00 75 00 6e 00 23 00 69 00 66 00 75 00 23 00 5f 00 54 00 65 00 78 00 23 00 74 00 42 00 6f 00 23 00 78 00 } //1 B#un#ifu#_Tex#tBo#x
		$a_01_3 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Trojan_BAT_AgentTesla_ELK_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.ELK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {00 43 6c 65 61 6e 75 70 00 49 44 65 66 65 72 72 65 64 00 } //1
		$a_01_1 = {00 47 65 74 54 79 70 65 00 } //1
		$a_01_2 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //1 䜀瑥硅潰瑲摥祔数s
		$a_01_3 = {00 54 6f 43 68 61 72 41 72 72 61 79 00 } //1
		$a_01_4 = {00 59 66 00 59 67 00 59 68 00 59 69 00 } //1
		$a_01_5 = {00 4d 65 73 73 61 67 65 44 61 74 61 00 54 77 6f 44 69 67 69 74 59 65 61 72 4d 61 78 00 } //1
		$a_01_6 = {00 52 65 70 6c 61 63 65 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}