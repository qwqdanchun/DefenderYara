
rule Backdoor_Win32_Hupigon_gen_BaiJin{
	meta:
		description = "Backdoor:Win32/Hupigon.gen!BaiJin,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 05 00 "
		
	strings :
		$a_02_0 = {81 c6 f8 05 00 00 80 c3 f8 81 90 01 01 f7 05 00 00 eb 09 90 00 } //05 00 
		$a_02_1 = {b8 01 00 00 00 68 90 01 02 00 10 c3 8b 0d 90 01 03 10 90 02 01 83 39 00 75 16 90 00 } //05 00 
		$a_02_2 = {b8 01 00 00 00 68 90 01 03 10 c3 8b 75 08 8b 0d 90 01 03 10 89 35 90 01 03 10 83 39 00 75 16 90 00 } //03 00 
		$a_00_3 = {3d 05 01 00 00 77 51 74 31 2d 00 01 00 00 74 0c 48 74 27 } //03 00 
		$a_00_4 = {8a 16 32 d0 88 16 46 49 75 f6 } //02 00 
		$a_00_5 = {f6 c1 01 74 0b 83 e1 fe 51 } //02 00 
		$a_00_6 = {8b e8 8b 45 3c 8d 4d 0a 51 } //01 00 
		$a_00_7 = {52 65 67 69 73 74 65 72 53 65 72 76 69 63 65 43 74 72 6c 48 61 6e 64 6c 65 72 45 78 } //00 00 
	condition:
		any of ($a_*)
 
}