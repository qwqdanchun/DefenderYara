
rule Trojan_Win64_Tedy_RM_MTB{
	meta:
		description = "Trojan:Win64/Tedy.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {48 2b d0 8b 42 fc d3 e8 49 89 51 08 41 89 41 18 0f b6 0a 83 e1 0f 4a 0f be 84 11 e8 d7 02 00 42 8a 8c 11 f8 d7 02 00 48 2b d0 8b 42 fc d3 e8 49 89 51 08 41 89 41 1c 0f b6 0a 83 e1 0f 4a 0f be 84 11 e8 d7 02 00 } //1
		$a_02_1 = {5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 74 00 72 00 61 00 6e 00 73 00 6c 00 61 00 74 00 65 00 20 00 6d 00 61 00 73 00 74 00 65 00 72 00 5c 00 90 02 10 57 00 72 00 61 00 70 00 70 00 65 00 72 00 5c 00 78 00 36 00 34 00 90 00 } //1
		$a_02_2 = {5c 47 6f 6f 67 6c 65 20 74 72 61 6e 73 6c 61 74 65 20 6d 61 73 74 65 72 5c 90 02 10 57 72 61 70 70 65 72 5c 78 36 34 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=2
 
}