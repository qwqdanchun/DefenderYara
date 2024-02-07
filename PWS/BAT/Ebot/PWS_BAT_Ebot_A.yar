
rule PWS_BAT_Ebot_A{
	meta:
		description = "PWS:BAT/Ebot.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 69 00 6e 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  pinlogger
		$a_01_1 = {73 00 74 00 65 00 61 00 6c 00 74 00 68 00 } //01 00  stealth
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {6d 61 69 6c 61 64 64 72 65 73 73 63 6f 6c 6c 65 63 74 69 6f 6e } //01 00  mailaddresscollection
		$a_01_4 = {68 6f 6f 6b 73 74 72 75 63 74 } //00 00  hookstruct
	condition:
		any of ($a_*)
 
}