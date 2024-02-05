
rule Ransom_Win32_KillDisk_PA_MTB{
	meta:
		description = "Ransom:Win32/KillDisk.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 90 02 10 73 68 75 74 64 6f 77 6e 20 2f 72 20 2f 74 20 25 64 90 02 10 2f 63 20 64 65 6c 20 2f 46 20 2f 53 20 2f 51 20 25 63 3a 5c 2a 2e 2a 90 00 } //01 00 
		$a_01_1 = {2e 00 65 00 78 00 65 00 2e 00 73 00 79 00 73 00 2e 00 64 00 72 00 76 00 2e 00 64 00 6f 00 63 00 2e 00 64 00 6f 00 63 00 78 00 2e 00 78 00 6c 00 73 00 2e 00 78 00 6c 00 73 00 78 00 2e 00 6d 00 64 00 62 00 2e 00 70 00 70 00 74 00 2e 00 70 00 70 00 74 00 78 00 2e 00 78 00 6d 00 6c 00 2e 00 6a 00 70 00 67 00 } //01 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 } //01 00 
		$a_01_3 = {2f 63 20 66 6f 72 6d 61 74 20 25 63 3a 20 2f 59 20 2f 58 20 2f 46 53 3a 4e 54 46 53 } //01 00 
		$a_01_4 = {5c 00 5c 00 2e 00 5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 44 00 72 00 69 00 76 00 65 00 25 00 64 00 } //01 00 
		$a_01_5 = {6d 00 73 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 53 00 76 00 63 00 } //00 00 
	condition:
		any of ($a_*)
 
}