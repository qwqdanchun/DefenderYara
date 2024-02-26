
rule TrojanDownloader_Win32_Amadey_PACJ_MTB{
	meta:
		description = "TrojanDownloader:Win32/Amadey.PACJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c1 99 6a 28 5e f7 fe 8a 82 90 01 04 32 81 90 01 04 8b 54 24 10 88 04 11 41 3b 4c 24 14 72 de 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}