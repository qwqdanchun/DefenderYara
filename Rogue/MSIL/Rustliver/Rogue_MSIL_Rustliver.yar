
rule Rogue_MSIL_Rustliver{
	meta:
		description = "Rogue:MSIL/Rustliver,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {75 00 73 00 65 00 72 00 5f 00 70 00 72 00 65 00 66 00 28 00 22 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2e 00 77 00 61 00 72 00 6e 00 5f 00 6c 00 65 00 61 00 76 00 69 00 6e 00 67 00 5f 00 73 00 65 00 63 00 75 00 72 00 65 00 22 00 2c 00 20 00 66 00 61 00 6c 00 73 00 65 00 29 00 3b 00 } //02 00  user_pref("security.warn_leaving_secure", false);
		$a_01_1 = {42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5f 00 76 00 6f 00 69 00 63 00 65 00 2e 00 77 00 61 00 76 00 } //01 00  Browser_voice.wav
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 53 00 42 00 53 00 5c 00 53 00 61 00 66 00 65 00 5f 00 42 00 72 00 6f 00 77 00 73 00 69 00 6e 00 67 00 5c 00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  Software\SBS\Safe_Browsing\Activation
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5f 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 5c 00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 69 00 6f 00 6e 00 } //00 00  Software\Browser_security\Activation
		$a_00_4 = {60 10 00 } //00 26 
	condition:
		any of ($a_*)
 
}