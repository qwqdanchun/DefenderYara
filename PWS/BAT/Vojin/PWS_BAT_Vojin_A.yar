
rule PWS_BAT_Vojin_A{
	meta:
		description = "PWS:BAT/Vojin.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 6e 00 64 00 69 00 63 00 61 00 74 00 65 00 20 00 52 00 75 00 6e 00 65 00 73 00 63 00 61 00 70 00 65 00 20 00 50 00 69 00 6e 00 6c 00 6f 00 67 00 20 00 2d 00 } //01 00  Syndicate Runescape Pinlog -
		$a_01_1 = {53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 20 00 53 00 6b 00 79 00 70 00 65 00 20 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 3a 00 } //01 00  Sending Skype Message:
		$a_01_2 = {2d 00 2d 00 2d 00 20 00 53 00 79 00 6e 00 64 00 69 00 63 00 61 00 74 00 65 00 20 00 53 00 74 00 61 00 72 00 74 00 65 00 64 00 20 00 2d 00 2d 00 2d 00 } //01 00  --- Syndicate Started ---
		$a_01_3 = {42 00 61 00 6e 00 6b 00 20 00 46 00 6f 00 75 00 6e 00 64 00 3a 00 20 00 4f 00 6c 00 64 00 20 00 53 00 63 00 68 00 6f 00 6f 00 6c 00 } //00 00  Bank Found: Old School
		$a_00_4 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}