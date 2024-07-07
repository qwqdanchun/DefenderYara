
rule Trojan_BAT_AsyncRAT_NT_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 08 9a 28 1e 00 00 0a 6f 90 01 01 00 00 0a 03 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 2c 04 17 0d de 5d 08 17 58 0c 08 06 8e 90 00 } //5
		$a_01_1 = {43 73 68 61 72 70 50 75 72 65 46 69 6e 64 65 72 } //1 CsharpPureFinder
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
rule Trojan_BAT_AsyncRAT_NT_MTB_2{
	meta:
		description = "Trojan:BAT/AsyncRAT.NT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 17 00 00 0a 72 90 01 03 70 28 90 01 03 0a 6f 90 01 03 0a 72 90 01 03 70 72 90 01 03 70 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 13 04 28 90 01 03 0a 72 90 01 03 70 90 00 } //5
		$a_03_1 = {6f 15 00 00 0a 13 05 11 04 72 90 01 03 70 6f 90 01 03 0a 2c 73 11 04 11 04 72 90 01 03 70 6f 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 58 6f 90 01 03 0a 28 90 01 03 0a 11 05 28 90 01 03 06 28 90 01 03 0a 90 00 } //5
		$a_01_2 = {58 75 62 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 Xub.Form1.resources
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1) >=11
 
}