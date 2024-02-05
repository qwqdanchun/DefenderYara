
rule Trojan_Win32_BHO_DZ{
	meta:
		description = "Trojan:Win32/BHO.DZ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 75 2e 79 6f 75 68 65 6d 65 2e 63 6f 6d 2f 71 69 62 68 6f 2e 69 6e 69 3f 74 3d 25 64 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 7b 36 43 38 37 37 32 32 32 2d 44 38 37 35 2d 34 41 42 41 2d 39 37 39 38 2d 36 34 38 45 38 42 45 42 43 44 33 43 7d 00 00 00 76 00 00 00 72 6f 6f 74 00 } //01 00 
		$a_00_1 = {51 00 49 00 42 00 48 00 4f 00 5f 00 46 00 41 00 4b 00 45 00 55 00 52 00 4c 00 5f 00 43 00 4f 00 4f 00 4b 00 49 00 45 00 00 00 00 00 53 00 68 00 65 00 6c 00 6c 00 20 00 44 00 6f 00 63 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 56 00 69 00 65 00 77 00 } //00 00 
	condition:
		any of ($a_*)
 
}