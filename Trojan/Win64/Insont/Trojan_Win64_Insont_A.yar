
rule Trojan_Win64_Insont_A{
	meta:
		description = "Trojan:Win64/Insont.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 5c 33 00 32 35 30 30 } //01 00  潓瑦慷敲䵜捩潲潳瑦坜湩潤獷䍜牵敲瑮敖獲潩屮湉整湲瑥匠瑥楴杮屳潚敮屳3㔲〰
		$a_01_1 = {68 74 74 70 3a 2f 2f 32 31 32 2e 31 30 39 2e 31 39 36 2e 36 37 2f 67 61 74 65 77 61 79 2e 70 68 70 } //01 00  http://212.109.196.67/gateway.php
		$a_01_2 = {22 69 6e 6a 65 63 74 22 3a 20 22 3c 73 63 72 69 70 74 3e 76 61 72 20 68 6f 6d 65 5f 6c 69 6e 6b 20 3d 20 5c 22 68 74 74 70 73 } //00 00  "inject": "<script>var home_link = \"https
	condition:
		any of ($a_*)
 
}