
rule Backdoor_Win32_PcClient_CP{
	meta:
		description = "Backdoor:Win32/PcClient.CP,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 02 00 00 68 60 01 00 00 8d 90 02 05 51 6a 00 8d 90 02 03 52 ff d0 33 c0 eb 90 00 } //01 00 
		$a_01_1 = {5c 63 6d 64 2e 65 78 65 20 2f 63 20 } //01 00 
		$a_01_2 = {25 34 64 2d 25 30 32 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 00 00 00 00 4b 69 6c 6c 20 59 6f 75 00 00 00 00 25 34 2e 32 66 20 47 42 00 } //01 00 
		$a_01_3 = {52 69 53 69 6e 67 00 00 49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 00 } //01 00 
		$a_01_4 = {57 69 6e 53 74 61 30 5c 44 65 66 61 75 6c 74 00 63 3a 5c 00 63 6d 64 2e 65 78 65 20 2f 63 20 22 25 73 22 00 6f 70 65 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}