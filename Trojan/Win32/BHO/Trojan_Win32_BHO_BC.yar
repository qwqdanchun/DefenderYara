
rule Trojan_Win32_BHO_BC{
	meta:
		description = "Trojan:Win32/BHO.BC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 90 05 04 01 00 4c 00 55 72 6c 4d 6b 53 65 74 53 65 73 73 69 6f 6e 4f 70 74 69 6f 6e 90 05 04 01 00 75 72 6c 6d 6f 6e 2e 64 6c 6c 00 90 00 } //01 00 
		$a_02_1 = {25 01 00 00 80 79 05 48 83 c8 fe 40 3d 90 01 04 75 06 ff 15 90 09 05 00 e8 90 00 } //01 00 
		$a_02_2 = {99 b9 03 00 00 00 f7 f9 81 fa 90 01 04 75 06 ff 15 90 09 05 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}