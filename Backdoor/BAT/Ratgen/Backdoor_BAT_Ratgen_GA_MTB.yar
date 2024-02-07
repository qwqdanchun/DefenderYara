
rule Backdoor_BAT_Ratgen_GA_MTB{
	meta:
		description = "Backdoor:BAT/Ratgen.GA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_81_0 = {50 61 73 73 47 72 61 62 62 65 72 } //01 00  PassGrabber
		$a_81_1 = {44 65 62 75 67 67 65 72 20 44 65 74 65 63 74 65 64 } //01 00  Debugger Detected
		$a_01_2 = {75 00 6e 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 65 00 64 00 20 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 45 00 7a 00 69 00 72 00 69 00 7a 00 27 00 73 00 20 00 22 00 2e 00 4e 00 45 00 54 00 20 00 52 00 65 00 61 00 63 00 74 00 6f 00 72 00 22 00 21 00 } //01 00  unregistered version of Eziriz's ".NET Reactor"!
		$a_01_3 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //01 00  file:///
		$a_01_4 = {4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  Location
		$a_01_5 = {52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 41 00 } //01 00  ResourceA
		$a_01_6 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 } //01 00  Virtual
		$a_01_7 = {57 00 72 00 69 00 74 00 65 00 } //01 00  Write
		$a_01_8 = {4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  Memory
		$a_01_9 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 } //01 00  Protect
		$a_01_10 = {33 00 32 00 2e 00 64 00 6c 00 6c 00 } //01 00  32.dll
		$a_01_11 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //01 00  {11111-22222-30001-00001}
		$a_01_12 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //01 00  {11111-22222-40001-00001}
		$a_01_13 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //00 00  GetDelegateForFunctionPointer
	condition:
		any of ($a_*)
 
}