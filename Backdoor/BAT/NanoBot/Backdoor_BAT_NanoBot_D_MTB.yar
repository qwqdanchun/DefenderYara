
rule Backdoor_BAT_NanoBot_D_MTB{
	meta:
		description = "Backdoor:BAT/NanoBot.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {11 00 02 28 90 01 04 72 90 01 04 28 90 01 04 0a 28 90 01 04 06 6f 90 01 04 0b 07 72 90 01 04 6f 90 01 04 0c 02 08 28 90 01 04 00 28 90 01 04 00 16 0d 90 00 } //01 00 
		$a_00_1 = {5f 00 50 00 52 00 4f 00 46 00 49 00 4c 00 45 00 52 00 } //01 00  _PROFILER
		$a_00_2 = {5f 00 45 00 4e 00 41 00 42 00 4c 00 45 00 5f 00 50 00 52 00 4f 00 46 00 49 00 4c 00 49 00 4e 00 47 00 } //01 00  _ENABLE_PROFILING
		$a_00_3 = {64 6e 73 70 79 41 } //01 00  dnspyA
		$a_00_4 = {6e 00 65 00 77 00 77 00 6f 00 72 00 6c 00 64 00 6f 00 72 00 64 00 65 00 72 00 } //00 00  newworldorder
	condition:
		any of ($a_*)
 
}