
rule Backdoor_Win32_Wisvereq_H{
	meta:
		description = "Backdoor:Win32/Wisvereq.H,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 00 } //01 00  〥堲┭㈰ⵘ〥堲┭㈰ⵘ〥堲┭㈰X
		$a_03_1 = {63 6d 64 2e 65 78 65 90 02 05 75 70 66 69 6c 65 90 02 05 6c 6f 61 64 66 69 6c 65 90 00 } //01 00 
		$a_03_2 = {6d 77 64 65 66 65 6e 67 90 02 05 6d 73 73 61 76 70 2e 65 78 65 90 02 05 4d 53 50 54 46 59 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}