
rule Backdoor_Win32_Tartober_A{
	meta:
		description = "Backdoor:Win32/Tartober.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 43 61 63 68 65 46 69 6c 65 41 } //01 00  VRLDownloadToCacheFileA
		$a_01_1 = {48 65 6c 6c 6f 40 29 21 30 } //01 00  Hello@)!0
		$a_01_2 = {21 28 2a 40 29 28 21 40 55 52 4c } //01 00  !(*@)(!@URL
		$a_01_3 = {3f 25 64 2d 25 64 2d 25 64 3d } //01 00  ?%d-%d-%d=
		$a_01_4 = {5c 7e 68 66 7e 5c } //01 00  \~hf~\
		$a_01_5 = {5c 41 64 6f 62 65 52 65 2e 65 78 65 } //01 00  \AdobeRe.exe
		$a_01_6 = {64 6d 64 20 2f 63 } //01 00  dmd /c
		$a_01_7 = {54 74 61 72 74 75 70 20 54 6f 66 74 77 61 72 65 } //00 00  Ttartup Toftware
	condition:
		any of ($a_*)
 
}