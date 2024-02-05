
rule Backdoor_Win32_Beastdoor_DT{
	meta:
		description = "Backdoor:Win32/Beastdoor.DT,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {46 49 52 45 46 4f 58 20 50 41 53 53 57 4f 52 44 53 } //01 00 
		$a_01_1 = {4d 6f 7a 69 6c 6c 61 57 69 6e 64 6f 77 43 6c 61 73 73 } //01 00 
		$a_01_2 = {4f 70 57 69 6e 64 6f 77 } //01 00 
		$a_01_3 = {4f 70 65 72 61 20 4d 61 69 6e 20 57 69 6e 64 6f 77 } //01 00 
		$a_01_4 = {42 45 47 49 4e 20 43 4c 49 50 42 4f 41 52 44 } //01 00 
		$a_01_5 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c } //01 00 
		$a_01_6 = {70 6c 61 69 6e 3b 20 63 68 61 72 73 65 74 3d 22 69 73 6f 2d 38 38 35 39 } //00 00 
	condition:
		any of ($a_*)
 
}