
rule Trojan_BAT_Torwofun_B{
	meta:
		description = "Trojan:BAT/Torwofun.B,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {28 00 53 00 79 00 73 00 74 00 65 00 6d 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 7c 00 6e 00 6f 00 64 00 65 00 2d 00 77 00 65 00 62 00 6b 00 69 00 74 00 7c 00 55 00 6e 00 4c 00 6f 00 61 00 64 00 7c 00 } //4 (SystemAutorun|node-webkit|UnLoad|
		$a_01_1 = {5c 00 53 00 68 00 69 00 6d 00 49 00 6e 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 4c 00 69 00 73 00 74 00 5c 00 61 00 6d 00 69 00 67 00 6f 00 2e 00 65 00 78 00 65 00 } //4 \ShimInclusionList\amigo.exe
		$a_03_2 = {28 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 7c 00 54 00 6f 00 72 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 7c 00 43 00 72 00 79 00 70 00 74 00 6f 00 44 00 42 00 7c 00 47 00 65 00 6d 00 57 00 61 00 72 00 65 00 7c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 20 00 41 00 50 00 50 00 [0-10] 29 00 28 00 24 00 7c 00 2f 00 24 00 7c 00 5c 00 5c 00 24 00 29 00 } //4
		$a_01_3 = {5c 00 41 00 6d 00 69 00 67 00 6f 00 44 00 69 00 73 00 74 00 72 00 69 00 62 00 2e 00 65 00 78 00 65 00 } //2 \AmigoDistrib.exe
		$a_01_4 = {44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 42 00 44 00 45 00 6e 00 68 00 61 00 6e 00 63 00 65 00 42 00 6f 00 6f 00 73 00 74 00 2e 00 73 00 79 00 73 00 } //1 DRIVERS\BDEnhanceBoost.sys
		$a_01_5 = {44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 42 00 44 00 4d 00 57 00 72 00 65 00 6e 00 63 00 68 00 5f 00 78 00 36 00 34 00 2e 00 73 00 79 00 73 00 } //1 DRIVERS\BDMWrench_x64.sys
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*4+(#a_03_2  & 1)*4+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}