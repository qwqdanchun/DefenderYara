
rule Trojan_BAT_Bladabindi_MR_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {6f 00 32 00 34 00 7a 00 69 00 30 00 31 00 4f 00 32 00 70 00 4b 00 6c 00 } //1 o24zi01O2pKl
		$a_01_1 = {2b 00 39 00 36 00 4f 00 78 00 44 00 62 00 30 00 32 00 54 00 35 00 61 00 50 00 } //1 +96OxDb02T5aP
		$a_01_2 = {2b 00 71 00 41 00 57 00 74 00 67 00 45 00 70 00 69 00 35 00 38 00 57 00 } //1 +qAWtgEpi58W
		$a_01_3 = {2b 00 6c 00 74 00 4c 00 77 00 32 00 74 00 30 00 70 00 69 00 30 00 75 00 34 00 55 00 55 00 } //1 +ltLw2t0pi0u4UU
		$a_01_4 = {2b 00 46 00 64 00 45 00 38 00 78 00 39 00 42 00 48 00 36 00 47 00 54 00 70 00 4a 00 4c 00 } //1 +FdE8x9BH6GTpJL
		$a_01_5 = {58 00 78 00 34 00 61 00 46 00 6a 00 43 00 66 00 75 00 55 00 44 00 30 00 46 00 68 00 } //1 Xx4aFjCfuUD0Fh
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_7 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_8 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_9 = {49 6e 76 6f 6b 65 } //1 Invoke
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}