
rule Backdoor_BAT_Aataki_A{
	meta:
		description = "Backdoor:BAT/Aataki.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 4f 00 4e 00 4e 00 45 00 43 00 54 00 45 00 44 00 7c 00 31 00 2e 00 31 00 7c 00 } //01 00  CONNECTED|1.1|
		$a_01_1 = {53 00 54 00 41 00 54 00 55 00 53 00 7c 00 53 00 53 00 59 00 4e 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 69 00 6e 00 67 00 } //01 00  STATUS|SSYN Attacking
		$a_01_2 = {53 00 54 00 41 00 54 00 55 00 53 00 7c 00 54 00 43 00 50 00 20 00 44 00 44 00 6f 00 73 00 20 00 6f 00 6e 00 } //01 00  STATUS|TCP DDos on
		$a_01_3 = {55 00 44 00 50 00 20 00 46 00 6c 00 6f 00 6f 00 64 00 69 00 6e 00 67 00 } //01 00  UDP Flooding
		$a_01_4 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_01_5 = {53 74 61 72 74 53 75 70 65 72 53 79 6e } //01 00  StartSuperSyn
		$a_01_6 = {5f 66 6c 6f 6f 64 69 6e 67 4a 6f 62 } //00 00  _floodingJob
	condition:
		any of ($a_*)
 
}