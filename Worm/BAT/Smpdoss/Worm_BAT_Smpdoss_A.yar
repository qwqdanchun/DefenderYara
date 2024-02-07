
rule Worm_BAT_Smpdoss_A{
	meta:
		description = "Worm:BAT/Smpdoss.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 6d 00 70 00 62 00 6f 00 74 00 } //01 00  smpbot
		$a_01_1 = {43 00 4f 00 4e 00 4e 00 45 00 43 00 54 00 45 00 44 00 7c 00 } //01 00  CONNECTED|
		$a_01_2 = {55 00 44 00 50 00 20 00 46 00 6c 00 6f 00 6f 00 64 00 69 00 6e 00 67 00 } //01 00  UDP Flooding
		$a_01_3 = {53 00 54 00 41 00 54 00 55 00 53 00 7c 00 53 00 53 00 59 00 4e 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 69 00 6e 00 67 00 } //01 00  STATUS|SSYN Attacking
		$a_01_4 = {4b 00 4c 00 4f 00 47 00 7c 00 } //01 00  KLOG|
		$a_01_5 = {41 00 74 00 74 00 65 00 6d 00 70 00 69 00 6e 00 67 00 20 00 74 00 6f 00 20 00 73 00 65 00 65 00 64 00 } //00 00  Attemping to seed
		$a_01_6 = {00 87 } //10 00 
	condition:
		any of ($a_*)
 
}