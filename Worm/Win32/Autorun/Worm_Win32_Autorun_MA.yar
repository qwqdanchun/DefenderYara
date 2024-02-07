
rule Worm_Win32_Autorun_MA{
	meta:
		description = "Worm:Win32/Autorun.MA,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 42 00 30 00 45 00 45 00 38 00 78 00 78 00 78 00 78 00 78 00 30 00 31 00 78 00 38 00 33 00 46 00 38 00 30 00 32 00 37 00 34 00 } //01 00  EB0EE8xxxxx01x83F80274
		$a_01_1 = {6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //01 00  ll\open\Command=
		$a_01_2 = {74 00 79 00 70 00 65 00 3d 00 68 00 69 00 64 00 64 00 65 00 6e 00 } //01 00  type=hidden
		$a_01_3 = {53 00 65 00 6e 00 64 00 20 00 45 00 2d 00 4d 00 61 00 69 00 6c 00 } //00 00  Send E-Mail
	condition:
		any of ($a_*)
 
}