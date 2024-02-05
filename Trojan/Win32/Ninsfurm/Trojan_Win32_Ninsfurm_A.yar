
rule Trojan_Win32_Ninsfurm_A{
	meta:
		description = "Trojan:Win32/Ninsfurm.A,SIGNATURE_TYPE_PEHSTR,05 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 73 00 61 00 66 00 65 00 73 00 75 00 72 00 66 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 61 00 66 00 65 00 53 00 75 00 72 00 66 00 20 00 41 00 42 00 55 00 53 00 45 00 20 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {6c 00 6f 00 6f 00 63 00 6b 00 65 00 72 00 } //01 00 
		$a_01_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 53 00 6d 00 73 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 53 00 65 00 71 00 75 00 72 00 69 00 74 00 79 00 } //01 00 
		$a_01_4 = {76 00 5f 00 31 00 } //01 00 
		$a_01_5 = {73 00 75 00 72 00 66 00 68 00 69 00 64 00 65 00 } //01 00 
		$a_01_6 = {2f 00 71 00 3a 00 61 00 20 00 2f 00 63 00 3a 00 22 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 20 00 2f 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}