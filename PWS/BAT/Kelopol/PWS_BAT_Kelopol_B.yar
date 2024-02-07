
rule PWS_BAT_Kelopol_B{
	meta:
		description = "PWS:BAT/Kelopol.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {33 19 7e 0b 00 00 04 72 90 01 02 00 70 28 90 01 01 00 00 0a 80 0b 00 00 04 38 90 09 03 00 02 1f 90 00 } //01 00 
		$a_00_1 = {73 00 6d 00 74 00 70 00 2e 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  smtp.gmail.com
		$a_00_2 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //00 00  Keylogger
	condition:
		any of ($a_*)
 
}