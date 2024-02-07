
rule Worm_Win32_Mydoom_PB_MTB{
	meta:
		description = "Worm:Win32/Mydoom.PB!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 65 74 62 69 6f 73 5f 69 6e 66 65 63 74 65 64 } //01 00  netbios_infected
		$a_01_1 = {6d 79 64 6f 6f 6d 5f 69 6e 66 65 63 74 65 64 } //01 00  mydoom_infected
		$a_01_2 = {41 64 64 65 64 20 63 6f 70 79 20 74 6f 20 73 74 61 74 75 70 } //01 00  Added copy to statup
		$a_01_3 = {62 69 73 63 61 6e 77 6f 72 6d 6d 61 72 6b } //00 00  biscanwormmark
		$a_01_4 = {00 5d } //04 00  崀
	condition:
		any of ($a_*)
 
}