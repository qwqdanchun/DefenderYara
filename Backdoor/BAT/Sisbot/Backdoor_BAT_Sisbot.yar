
rule Backdoor_BAT_Sisbot{
	meta:
		description = "Backdoor:BAT/Sisbot,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 00 53 00 45 00 52 00 20 00 66 00 6f 00 6f 00 } //01 00  USER foo
		$a_01_1 = {50 00 41 00 53 00 53 00 20 00 77 00 68 00 61 00 74 00 64 00 61 00 66 00 6f 00 63 00 6b 00 } //01 00  PASS whatdafock
		$a_01_2 = {42 00 6f 00 74 00 74 00 79 00 20 00 53 00 68 00 69 00 74 00 74 00 79 00 20 00 53 00 74 00 6f 00 72 00 6d 00 79 00 } //00 00  Botty Shitty Stormy
	condition:
		any of ($a_*)
 
}