
rule TrojanDownloader_Win32_Camec_I{
	meta:
		description = "TrojanDownloader:Win32/Camec.I,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 37 00 35 00 33 00 35 00 32 00 34 00 36 00 34 00 33 00 34 00 36 00 30 00 36 00 30 00 34 00 31 00 42 00 35 00 30 00 34 00 42 00 35 00 44 00 31 00 31 00 31 00 39 00 34 00 42 00 31 00 38 00 } //01 00 
		$a_01_1 = {36 00 39 00 37 00 35 00 35 00 39 00 34 00 36 00 35 00 43 00 35 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}