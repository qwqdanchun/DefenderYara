
rule TrojanDownloader_Win32_Citeary_A_MTB{
	meta:
		description = "TrojanDownloader:Win32/Citeary.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {c6 45 f0 6b c6 45 f1 65 c6 45 f2 72 c6 45 f3 6e c6 45 f4 65 c6 45 f5 6c c6 45 f6 33 c6 45 f7 32 c6 45 f8 2e c6 45 f9 64 c6 45 fa 6c c6 45 fb 6c } //02 00 
		$a_01_1 = {c6 45 ec 48 c6 45 ed 65 c6 45 ee 61 c6 45 ef 70 c6 45 f0 46 c6 45 f1 72 c6 45 f2 65 c6 45 f3 65 } //02 00 
		$a_01_2 = {c6 45 b0 48 c6 45 b1 65 c6 45 b2 61 c6 45 b3 70 c6 45 b4 41 c6 45 b5 6c c6 45 b6 6c c6 45 b7 6f c6 45 b8 63 } //00 00 
	condition:
		any of ($a_*)
 
}