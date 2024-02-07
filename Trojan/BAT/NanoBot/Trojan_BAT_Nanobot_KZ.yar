
rule Trojan_BAT_Nanobot_KZ{
	meta:
		description = "Trojan:BAT/Nanobot.KZ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {5d 91 61 02 90 01 01 17 90 01 01 02 8e 90 01 01 5d 91 90 01 01 20 00 01 00 00 90 01 01 20 00 01 00 00 5d 90 01 01 9c 90 00 } //02 00 
		$a_00_1 = {41 6c 69 65 6e 41 6c 62 65 72 74 56 69 73 69 74 73 54 68 65 55 53 41 } //01 00  AlienAlbertVisitsTheUSA
		$a_00_2 = {41 74 74 61 63 6b 43 6f 6d 70 6c 65 74 65 64 } //01 00  AttackCompleted
		$a_00_3 = {41 74 74 61 63 6b 43 6f 6d 70 6c 65 74 65 64 45 76 65 6e 74 } //01 00  AttackCompletedEvent
		$a_00_4 = {41 49 41 74 74 61 63 6b } //00 00  AIAttack
		$a_00_5 = {5d 04 00 00 } //9c 3f 
	condition:
		any of ($a_*)
 
}