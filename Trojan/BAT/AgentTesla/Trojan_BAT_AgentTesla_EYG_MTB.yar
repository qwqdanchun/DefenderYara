
rule Trojan_BAT_AgentTesla_EYG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EYG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {00 45 6e 75 6d 43 61 74 65 67 6f 72 69 65 73 46 6c 61 67 73 00 } //1
		$a_01_1 = {00 44 61 74 61 4d 69 73 61 6c 69 67 6e 65 64 00 } //1 䐀瑡䵡獩污杩敮d
		$a_01_2 = {00 44 69 72 65 63 74 6f 72 79 49 6e 66 6f 00 } //1
		$a_01_3 = {00 4c 6f 6e 67 50 61 74 68 44 69 72 65 63 74 6f 72 79 00 } //1
		$a_01_4 = {00 53 74 72 69 6e 67 54 79 70 65 49 6e 66 6f 00 } //1 匀牴湩呧灹䥥普o
		$a_01_5 = {00 49 6e 70 75 74 42 6c 6f 63 6b 53 69 7a 65 00 } //1 䤀灮瑵求捯卫穩e
		$a_01_6 = {00 45 73 63 61 70 65 64 49 52 65 6d 6f 74 69 6e 67 46 6f 72 6d 61 74 74 65 72 00 } //1
		$a_01_7 = {00 70 72 6f 6a 65 63 74 6e 61 6d 65 00 } //1
		$a_01_8 = {00 54 75 63 73 6f 6e 00 } //1 吀捵潳n
		$a_01_9 = {00 50 61 72 65 74 68 65 72 66 6c 65 6e 00 } //1 倀牡瑥敨晲敬n
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}