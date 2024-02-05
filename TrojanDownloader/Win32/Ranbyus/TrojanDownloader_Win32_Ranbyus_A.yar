
rule TrojanDownloader_Win32_Ranbyus_A{
	meta:
		description = "TrojanDownloader:Win32/Ranbyus.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {89 f7 ac 30 e0 88 07 47 84 c0 74 02 eb f4 } //01 00 
		$a_01_1 = {31 d2 4a 39 d0 74 e8 89 c7 8d 43 } //01 00 
		$a_01_2 = {78 2e 6c 63 6b 00 } //00 00 
	condition:
		any of ($a_*)
 
}