
rule Trojan_Win32_Tiny_PA_MTB{
	meta:
		description = "Trojan:Win32/Tiny.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 37 37 2e 37 33 2e 36 39 2e 31 37 39 3a 39 2f 6d 6b 2f 70 25 75 2e 70 68 70 3f 61 3d 25 75 } //02 00 
		$a_00_1 = {68 74 74 70 3a 2f 2f 37 37 2e 37 33 2e 37 30 2e 32 34 37 3a 39 2f 6d 6b 2f 70 25 75 2e 70 68 70 3f 61 3d 25 75 } //02 00 
		$a_02_2 = {43 3a 5c 54 45 4d 50 5c 6d 69 61 90 02 05 2e 74 6d 70 90 00 } //01 00 
		$a_02_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 63 6d 64 2e 65 78 65 20 2f 63 20 64 65 6c 20 22 43 3a 5c 54 45 4d 50 5c 6d 69 61 90 02 05 2e 74 6d 70 90 00 } //01 00 
		$a_02_4 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 6e 65 74 73 68 2e 65 78 65 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 22 90 02 20 2e 65 78 65 22 90 00 } //01 00 
		$a_00_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //00 00 
	condition:
		any of ($a_*)
 
}