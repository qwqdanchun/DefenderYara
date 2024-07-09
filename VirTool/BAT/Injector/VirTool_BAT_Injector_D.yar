
rule VirTool_BAT_Injector_D{
	meta:
		description = "VirTool:BAT/Injector.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {11 04 91 58 20 00 01 00 00 5d 13 06 02 50 11 05 8f 11 00 00 01 25 71 11 00 00 01 06 11 06 91 61 d2 81 11 00 00 01 } //1
		$a_03_1 = {20 50 45 00 00 33 0e 12 00 7b ?? 00 00 04 20 4d 5a 00 00 2e 02 } //1
		$a_03_2 = {11 11 17 58 13 11 11 11 12 02 7b ?? 00 00 04 17 59 31 d9 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}