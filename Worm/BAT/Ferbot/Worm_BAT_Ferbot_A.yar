
rule Worm_BAT_Ferbot_A{
	meta:
		description = "Worm:BAT/Ferbot.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 41 00 4e 00 4e 00 4f 00 54 00 20 00 43 00 48 00 41 00 42 00 47 00 45 00 20 00 5a 00 4f 00 4e 00 45 00 20 00 49 00 44 00 } //01 00  CANNOT CHABGE ZONE ID
		$a_01_1 = {4d 00 61 00 6b 00 69 00 6e 00 67 00 20 00 6d 00 75 00 74 00 65 00 78 00 21 00 } //01 00  Making mutex!
		$a_01_2 = {70 00 72 00 6f 00 63 00 65 00 73 00 73 00 6b 00 69 00 6c 00 6c 00 61 00 68 00 3a 00 } //01 00  processkillah:
		$a_01_3 = {49 00 76 00 65 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 5b 00 } //01 00  Ive infected [
		$a_01_4 = {3a 00 53 00 74 00 65 00 61 00 6c 00 20 00 70 00 61 00 73 00 73 00 20 00 65 00 72 00 72 00 6f 00 72 00 } //00 00  :Steal pass error
	condition:
		any of ($a_*)
 
}