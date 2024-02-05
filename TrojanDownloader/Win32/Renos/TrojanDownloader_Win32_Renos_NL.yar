
rule TrojanDownloader_Win32_Renos_NL{
	meta:
		description = "TrojanDownloader:Win32/Renos.NL,SIGNATURE_TYPE_PEHSTR,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {5d 5d 3e 3c 2f 72 65 70 6f 72 74 3e } //02 00 
		$a_01_1 = {2f 75 70 64 2f 63 68 65 63 6b 2e 70 68 70 3f } //03 00 
		$a_01_2 = {2e 70 68 70 3f 76 65 72 3d 25 56 45 52 25 26 63 76 65 72 3d 25 43 56 45 52 } //00 00 
	condition:
		any of ($a_*)
 
}