
rule Trojan_BAT_RedLineStealer_AH_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.AH!MTB,SIGNATURE_TYPE_PEHSTR,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {01 57 fd 03 3c 09 0f 00 00 00 00 00 00 00 00 00 00 02 00 00 00 84 00 00 00 fc } //03 00 
		$a_01_1 = {69 00 73 00 20 00 74 00 61 00 6d 00 70 00 65 00 72 00 65 00 64 00 2e 00 } //03 00 
		$a_01_2 = {44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 20 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 } //03 00 
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //03 00 
		$a_01_4 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //03 00 
		$a_01_5 = {3d 00 61 00 3d 00 62 00 3d 00 63 00 3d 00 64 00 3d 00 66 00 65 00 67 00 65 00 68 00 65 00 69 00 65 00 6a 00 65 00 6b 00 65 00 6c 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}