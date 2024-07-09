
rule TrojanDownloader_BAT_DCRat_F_MTB{
	meta:
		description = "TrojanDownloader:BAT/DCRat.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 20 00 00 00 00 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 0a 28 ?? 00 00 0a 20 ?? ?? ?? 00 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 20 ?? ?? ?? 00 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 20 ?? ?? ?? 00 28 ?? 00 00 06 1f 25 28 ?? 00 00 0a 28 ?? 00 00 0a 20 ?? ?? ?? 00 28 ?? 00 00 06 72 01 00 00 70 6f ?? 00 00 0a 6f ?? 00 00 0a 0b 07 28 ?? 00 00 0a 39 ?? 00 00 00 07 28 ?? 00 00 0a dd 06 00 00 00 26 dd 00 00 00 00 73 ?? 00 00 0a 06 07 28 } //2
		$a_01_1 = {49 73 49 6e 52 6f 6c 65 } //1 IsInRole
		$a_01_2 = {73 65 74 5f 56 65 72 62 } //1 set_Verb
		$a_01_3 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //1 set_FileName
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}