
rule VirTool_Win32_Obfuscator_ALM{
	meta:
		description = "VirTool:Win32/Obfuscator.ALM,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {68 13 8e c0 09 50 e8 90 01 02 00 00 8b 4d 90 01 01 68 ee 38 83 0c 51 a3 90 01 02 40 00 e8 90 01 02 00 00 68 f2 5d d3 0b 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule VirTool_Win32_Obfuscator_ALM_2{
	meta:
		description = "VirTool:Win32/Obfuscator.ALM,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 1c 00 00 "
		
	strings :
		$a_01_0 = {8a 10 49 88 14 06 40 85 c9 75 f5 } //5
		$a_03_1 = {8a 14 06 88 14 19 33 d2 8b c1 f7 35 90 01 04 46 85 d2 75 06 03 35 90 00 } //10
		$a_03_2 = {25 ff 00 00 00 8a 8c 85 90 01 02 ff ff 8b 85 90 01 02 ff ff 30 0c 07 90 00 } //5
		$a_01_3 = {68 cd ac ce 26 } //1
		$a_01_4 = {68 a7 5b 66 f0 } //1
		$a_01_5 = {68 01 cb 89 40 } //1
		$a_01_6 = {68 6d ab f0 38 } //1
		$a_01_7 = {68 ae 75 d1 4d } //1
		$a_01_8 = {68 82 23 54 40 } //1
		$a_01_9 = {68 28 6f 8e 42 } //1
		$a_01_10 = {68 da 6e d6 50 } //1
		$a_01_11 = {68 4f f8 ff b6 } //1
		$a_01_12 = {68 e6 58 e1 68 } //1
		$a_01_13 = {68 19 53 7c d2 } //1
		$a_01_14 = {68 27 52 cb 5e } //1
		$a_01_15 = {68 05 3c 64 be } //1
		$a_01_16 = {68 db 03 e9 4a } //1
		$a_01_17 = {68 e4 65 e7 a3 } //1
		$a_01_18 = {68 ff 52 c6 49 } //1
		$a_01_19 = {68 86 0c f2 e3 } //1
		$a_01_20 = {68 7b 5f 37 e2 } //1
		$a_01_21 = {68 35 9a 81 7f } //1
		$a_01_22 = {68 e3 4e 83 ea } //1
		$a_01_23 = {68 6e e3 74 c0 } //1
		$a_01_24 = {68 fb 70 0d dc } //1
		$a_01_25 = {68 d8 a4 30 27 } //1
		$a_01_26 = {68 c2 5c b1 4f } //1
		$a_01_27 = {68 cc 04 7f 6c } //1
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*10+(#a_03_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1) >=25
 
}