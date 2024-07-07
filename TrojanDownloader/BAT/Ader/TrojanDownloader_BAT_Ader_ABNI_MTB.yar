
rule TrojanDownloader_BAT_Ader_ABNI_MTB{
	meta:
		description = "TrojanDownloader:BAT/Ader.ABNI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a de 03 26 de 00 06 6f 90 01 03 0a 2c e2 28 90 01 03 0a 06 16 6f 90 01 03 0a 6f 90 01 03 0a 72 90 01 03 70 7e 90 01 03 0a 6f 90 01 03 0a 28 90 01 03 0a 2a 90 0a 43 00 06 72 90 01 03 70 28 90 01 03 06 6f 90 00 } //3
		$a_01_1 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=6
 
}