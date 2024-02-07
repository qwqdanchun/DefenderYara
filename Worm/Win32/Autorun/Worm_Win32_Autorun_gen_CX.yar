
rule Worm_Win32_Autorun_gen_CX{
	meta:
		description = "Worm:Win32/Autorun.gen!CX,SIGNATURE_TYPE_PEHSTR_EXT,16 00 15 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 56 00 69 00 72 00 75 00 73 00 } //0a 00  Windows\CurrentVersion\Run\Virus
		$a_02_1 = {4d 00 69 00 78 00 61 00 90 02 04 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_00_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 3d 00 20 00 } //01 00  shell\open\command = 
		$a_00_3 = {70 00 72 00 6f 00 63 00 65 00 78 00 70 00 2a 00 } //01 00  procexp*
		$a_00_4 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 3d 00 20 00 } //00 00  shell\Explore\command = 
	condition:
		any of ($a_*)
 
}