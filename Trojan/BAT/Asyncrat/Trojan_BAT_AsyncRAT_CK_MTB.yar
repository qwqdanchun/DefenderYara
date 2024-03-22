
rule Trojan_BAT_AsyncRAT_CK_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.CK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 00 65 00 6e 00 74 00 72 00 79 00 2e 00 63 00 6f 00 2f 00 4d 00 75 00 63 00 6b 00 53 00 6f 00 66 00 74 00 2f 00 72 00 61 00 77 00 } //01 00  rentry.co/MuckSoft/raw
		$a_01_1 = {7a 00 69 00 70 00 2e 00 6f 00 72 00 67 00 2f 00 61 00 2f 00 37 00 7a 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  zip.org/a/7zr.exe
		$a_01_2 = {70 00 73 00 6f 00 6d 00 61 00 6c 00 69 00 4d 00 55 00 53 00 54 00 41 00 46 00 41 00 36 00 38 00 31 00 21 00 21 00 } //01 00  psomaliMUSTAFA681!!
		$a_01_3 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 54 00 6f 00 6f 00 6c 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  ProgramData\MicrosoftTool\current\Microsoft.exe
		$a_01_4 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 37 00 7a 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  ProgramData\7zr.exe
	condition:
		any of ($a_*)
 
}