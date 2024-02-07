
rule Worm_BAT_Autorun_X{
	meta:
		description = "Worm:BAT/Autorun.X,SIGNATURE_TYPE_PEHSTR,09 00 09 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //02 00  [autorun]
		$a_01_1 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 7c 00 46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 7c 00 } //02 00  Passwords|FileZilla|
		$a_01_2 = {5c 00 2e 00 70 00 75 00 72 00 70 00 6c 00 65 00 5c 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2e 00 78 00 6d 00 6c 00 } //02 00  \.purple\accounts.xml
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 6d 00 6f 00 7a 00 5f 00 6c 00 6f 00 67 00 69 00 6e 00 73 00 3b 00 } //01 00  SELECT * FROM moz_logins;
		$a_01_4 = {7c 00 49 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 } //01 00  |Infected
		$a_01_5 = {46 00 6c 00 6f 00 6f 00 64 00 69 00 6e 00 67 00 3a 00 } //00 00  Flooding:
	condition:
		any of ($a_*)
 
}