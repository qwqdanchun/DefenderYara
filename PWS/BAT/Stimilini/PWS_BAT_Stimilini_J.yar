
rule PWS_BAT_Stimilini_J{
	meta:
		description = "PWS:BAT/Stimilini.J,SIGNATURE_TYPE_PEHSTR,07 00 07 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 65 00 61 00 6d 00 20 00 73 00 70 00 72 00 65 00 61 00 64 00 65 00 72 00 } //01 00  Steam spreader
		$a_01_1 = {26 00 75 00 69 00 5f 00 6d 00 6f 00 64 00 65 00 3d 00 77 00 65 00 62 00 26 00 61 00 63 00 63 00 65 00 73 00 73 00 5f 00 74 00 6f 00 6b 00 65 00 6e 00 3d 00 } //01 00  &ui_mode=web&access_token=
		$a_01_2 = {73 00 74 00 65 00 61 00 6d 00 4c 00 6f 00 67 00 69 00 6e 00 53 00 65 00 63 00 75 00 72 00 65 00 3d 00 } //01 00  steamLoginSecure=
		$a_01_3 = {42 00 6c 00 61 00 63 00 6b 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 } //01 00  BlackCrypter
		$a_01_4 = {41 00 64 00 64 00 69 00 6e 00 67 00 20 00 69 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 20 00 2e 00 2e 00 2e 00 } //00 00  Adding injection settings ...
		$a_01_5 = {00 5d 04 00 } //00 42 
	condition:
		any of ($a_*)
 
}