
rule Backdoor_Win32_Bifrose_HO{
	meta:
		description = "Backdoor:Win32/Bifrose.HO,SIGNATURE_TYPE_PEHSTR,08 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //01 00  CreateProcessA
		$a_01_1 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_2 = {52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 } //02 00  RtlMoveMemory
		$a_01_3 = {68 00 69 00 64 00 64 00 65 00 6e 00 20 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 20 00 4c 00 75 00 69 00 73 00 4e 00 32 00 } //02 00  hidden Content. LuisN2
		$a_01_4 = {49 6e 64 65 74 65 63 74 61 62 6c 65 73 20 4f 6e 6c 69 6e 65 } //02 00  Indetectables Online
		$a_01_5 = {7a 00 69 00 78 00 6e 00 6e 00 6a 00 31 00 31 00 75 00 30 00 31 00 72 00 68 00 75 00 77 00 64 00 61 00 31 00 38 00 67 00 63 00 35 00 30 00 30 00 33 00 74 00 72 00 39 00 37 00 73 00 39 00 77 00 32 00 70 00 38 00 35 00 30 00 6a 00 30 00 63 00 6a 00 35 00 6d 00 62 00 6f 00 72 00 72 00 7a 00 79 00 68 00 34 00 35 00 33 00 32 00 } //00 00  zixnnj11u01rhuwda18gc5003tr97s9w2p850j0cj5mborrzyh4532
	condition:
		any of ($a_*)
 
}