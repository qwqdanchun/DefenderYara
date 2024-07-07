
rule TrojanDownloader_Win32_Banload_BGP{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGP,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {6f 00 70 00 65 00 6e 90 01 20 90 02 06 2e 00 76 00 62 00 73 90 00 } //1
		$a_03_1 = {68 70 11 01 00 e8 b7 ee f5 ff 6a 00 6a 00 6a 00 8d 45 8c e8 0d 8e ff ff ff 75 8c 68 90 01 03 00 68 90 01 03 00 68 90 01 03 00 68 90 01 03 00 68 90 01 03 00 68 90 01 03 00 68 90 01 03 00 6a 00 8d 45 90 90 ba 09 00 00 00 90 00 } //10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*10) >=11
 
}