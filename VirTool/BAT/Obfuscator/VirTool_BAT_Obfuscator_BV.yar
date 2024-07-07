
rule VirTool_BAT_Obfuscator_BV{
	meta:
		description = "VirTool:BAT/Obfuscator.BV,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_03_0 = {32 e5 07 28 90 09 1b 00 2b 12 90 01 04 6f 90 01 04 1f 90 01 01 61 d2 9c 90 01 01 17 58 90 01 03 6f 90 00 } //1
		$a_03_1 = {32 e5 06 28 90 09 1b 00 2b 12 90 01 04 6f 90 01 04 1f 90 01 01 61 d2 9c 90 01 01 17 58 90 01 03 6f 90 00 } //1
		$a_03_2 = {32 e5 08 28 90 09 1b 00 2b 12 90 01 04 6f 90 01 04 1f 90 01 01 61 d2 9c 90 01 01 17 58 90 01 03 6f 90 00 } //1
		$a_03_3 = {32 e5 09 28 90 09 1b 00 2b 12 90 01 04 6f 90 01 04 1f 90 01 01 61 d2 9c 90 01 01 17 58 90 01 03 6f 90 00 } //1
		$a_01_4 = {67 65 74 5f 4c 65 6e 67 74 68 00 67 65 74 5f 43 68 61 72 73 00 4c 6f 61 64 00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 00 49 6e 76 6f 6b 65 00 } //1 敧彴敌杮桴最瑥䍟慨獲䰀慯d敧彴湅牴偹楯瑮䤀癮歯e
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=2
 
}