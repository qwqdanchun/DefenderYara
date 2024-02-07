
rule TrojanDownloader_Win32_Banload_ASW{
	meta:
		description = "TrojanDownloader:Win32/Banload.ASW,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 49 6e 66 5c 7e 33 37 37 38 2e 74 6d 70 } //02 00  C:\WINDOWS\Inf\~3778.tmp
		$a_01_1 = {43 50 6c 41 70 70 6c 65 74 } //03 00  CPlApplet
		$a_01_2 = {4d 61 64 45 78 63 65 70 74 69 6f 6e } //03 00  MadException
		$a_01_3 = {6d 61 64 53 74 72 69 6e 67 73 } //04 00  madStrings
		$a_01_4 = {6d 61 64 53 65 63 75 72 69 74 79 } //00 00  madSecurity
	condition:
		any of ($a_*)
 
}