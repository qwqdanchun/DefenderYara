
rule Backdoor_BAT_AsyncRAT_O_MTB{
	meta:
		description = "Backdoor:BAT/AsyncRAT.O!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 7e 90 01 02 00 04 28 90 01 02 00 06 a4 90 01 01 00 00 01 11 90 01 01 7e 90 01 02 00 04 28 90 01 02 00 06 7e 90 01 02 00 04 28 90 01 02 00 06 11 90 01 01 11 90 01 01 11 90 01 01 7e 90 01 02 00 04 28 90 01 02 00 06 20 00 01 00 00 14 14 11 90 01 01 7e 90 01 02 00 04 28 90 01 02 00 06 26 20 90 00 } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 20 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 } //1 Debugger Detected
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}