
rule HackTool_MacOS_AirCrack_A_xp{
	meta:
		description = "HackTool:MacOS/AirCrack.A!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 69 72 63 72 61 63 6b 2d 6e 67 } //01 00  Aircrack-ng
		$a_02_1 = {64 6f 20 73 63 72 69 70 74 90 02 10 2d 61 20 25 6c 75 20 2d 62 20 25 40 20 2f 70 72 69 76 61 74 65 2f 74 6d 70 2f 61 69 72 70 6f 72 74 53 6e 69 66 66 2a 2e 63 61 70 90 00 } //01 00 
		$a_00_2 = {69 73 4b 6f 72 65 6b 41 74 74 61 63 6b } //01 00  isKorekAttack
		$a_00_3 = {73 74 61 72 74 43 61 70 74 75 72 } //01 00  startCaptur
		$a_00_4 = {73 74 61 72 74 43 72 61 63 6b } //01 00  startCrack
		$a_00_5 = {73 65 74 4b 6f 72 65 6b 41 74 74 61 63 6b 3a } //00 00  setKorekAttack:
	condition:
		any of ($a_*)
 
}