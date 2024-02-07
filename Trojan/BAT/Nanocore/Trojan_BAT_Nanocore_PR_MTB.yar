
rule Trojan_BAT_Nanocore_PR_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.PR!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 75 72 64 69 73 68 43 6f 64 65 72 50 72 6f 64 75 63 74 73 } //01 00  KurdishCoderProducts
		$a_01_1 = {42 00 65 00 73 00 74 00 20 00 4e 00 6f 00 74 00 65 00 70 00 61 00 64 00 } //01 00  Best Notepad
		$a_01_2 = {53 00 70 00 65 00 65 00 63 00 68 00 42 00 4f 00 78 00 20 00 53 00 74 00 61 00 72 00 74 00 2e 00 2e 00 } //01 00  SpeechBOx Start..
		$a_01_3 = {42 00 65 00 73 00 74 00 5f 00 4e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  Best_Notepad.Properties.Resources
		$a_01_4 = {61 00 6c 00 6c 00 69 00 63 00 65 00 39 00 35 00 35 00 34 00 2e 00 30 00 30 00 30 00 77 00 65 00 62 00 68 00 6f 00 73 00 74 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //00 00  allice9554.000webhostapp.com
	condition:
		any of ($a_*)
 
}