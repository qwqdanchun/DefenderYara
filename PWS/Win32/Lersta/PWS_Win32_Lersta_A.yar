
rule PWS_Win32_Lersta_A{
	meta:
		description = "PWS:Win32/Lersta.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {80 3f 09 74 19 80 3f 0d 74 14 80 3f 0a 74 0f 80 3f 5b 74 0a 80 3f 5d 74 05 80 3f 60 75 03 c6 07 20 47 80 3f 00 75 d9 } //01 00 
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 46 00 61 00 72 00 32 00 5c 00 53 00 61 00 76 00 65 00 64 00 44 00 69 00 61 00 6c 00 6f 00 67 00 48 00 69 00 73 00 74 00 6f 00 72 00 79 00 5c 00 46 00 54 00 50 00 48 00 6f 00 73 00 74 00 } //01 00  Software\Far2\SavedDialogHistory\FTPHost
		$a_01_2 = {5c 00 56 00 61 00 6e 00 44 00 79 00 6b 00 65 00 5c 00 43 00 6f 00 6e 00 66 00 69 00 67 00 5c 00 53 00 65 00 73 00 73 00 69 00 6f 00 6e 00 73 00 } //01 00  \VanDyke\Config\Sessions
		$a_01_3 = {73 74 65 61 6c 65 72 2e 64 6f 6e 65 } //00 00  stealer.done
		$a_00_4 = {5d 04 00 } //00 74 
	condition:
		any of ($a_*)
 
}