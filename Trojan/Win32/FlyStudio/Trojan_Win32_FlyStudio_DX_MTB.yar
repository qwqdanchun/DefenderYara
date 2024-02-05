
rule Trojan_Win32_FlyStudio_DX_MTB{
	meta:
		description = "Trojan:Win32/FlyStudio.DX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 75 74 64 6f 77 6e 2e 65 78 65 20 2d 73 20 2d 74 20 36 30 } //01 00 
		$a_01_1 = {30 42 33 41 41 30 37 35 45 33 30 44 31 38 44 38 44 34 46 36 39 44 34 32 36 43 30 34 41 42 36 30 33 39 38 35 41 34 46 45 45 39 30 35 43 32 31 39 32 38 30 41 37 34 45 46 41 44 43 41 44 36 30 42 35 44 37 46 39 32 37 45 31 44 37 44 38 44 37 38 38 35 42 30 38 34 37 38 46 36 46 42 42 37 33 37 33 33 31 34 32 42 33 45 35 33 38 35 44 42 43 38 36 34 31 38 31 46 41 31 39 39 39 41 41 46 42 46 41 30 43 42 } //01 00 
		$a_01_2 = {78 69 61 6f 73 69 63 70 2e 74 61 6f 62 61 6f 2e 63 6f 6d } //01 00 
		$a_01_3 = {45 39 33 32 36 46 33 45 2d 41 32 33 43 2d 34 36 44 33 2d 39 43 32 30 2d 33 41 45 38 32 35 45 46 41 30 41 37 } //01 00 
		$a_01_4 = {7b 39 44 41 39 36 42 46 39 43 45 42 44 34 35 63 35 42 46 43 46 39 34 43 42 45 36 31 36 37 31 46 35 7d } //01 00 
		$a_01_5 = {75 69 6e 3d 35 37 33 35 31 38 39 31 35 } //00 00 
	condition:
		any of ($a_*)
 
}