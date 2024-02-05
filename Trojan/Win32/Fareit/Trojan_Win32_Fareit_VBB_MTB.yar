
rule Trojan_Win32_Fareit_VBB_MTB{
	meta:
		description = "Trojan:Win32/Fareit.VBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {65 00 42 00 69 00 4a 00 33 00 46 00 50 00 68 00 6b 00 6e 00 69 00 69 00 66 00 31 00 70 00 31 00 37 00 75 00 37 00 55 00 49 00 64 00 43 00 46 00 53 00 76 00 77 00 4d 00 6b 00 34 00 6b 00 32 00 49 00 4a 00 39 00 73 00 5a 00 37 00 39 00 } //01 00 
		$a_01_2 = {54 00 4a 00 6f 00 77 00 4d 00 6d 00 30 00 7a 00 67 00 67 00 6e 00 6c 00 32 00 35 00 34 00 } //02 00 
		$a_01_3 = {46 00 59 00 41 00 79 00 59 00 47 00 51 00 51 00 34 00 42 00 42 00 6c 00 44 00 34 00 39 00 } //02 00 
		$a_01_4 = {4f 00 64 00 37 00 33 00 78 00 42 00 7a 00 64 00 4e 00 53 00 54 00 59 00 77 00 5a 00 53 00 6e 00 41 00 66 00 36 00 53 00 4a 00 36 00 50 00 37 00 34 00 61 00 4d 00 61 00 76 00 72 00 73 00 4f 00 45 00 53 00 41 00 69 00 56 00 61 00 4a 00 31 00 32 00 32 00 } //02 00 
		$a_01_5 = {51 00 48 00 77 00 46 00 6c 00 39 00 41 00 72 00 69 00 4c 00 48 00 75 00 63 00 30 00 68 00 37 00 78 00 31 00 37 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}