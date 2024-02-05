
rule Trojan_Win32_Kilim_K{
	meta:
		description = "Trojan:Win32/Kilim.K,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 32 8d 85 90 01 04 50 e8 90 01 04 6a 30 8d 85 90 01 04 50 e8 90 01 04 6a 31 8d 85 90 00 } //01 00 
		$a_01_1 = {6a 32 51 ff d6 8d 95 b0 fe ff ff 6a 30 52 ff d6 8d 85 90 fe ff ff 6a 31 50 ff d6 } //01 00 
		$a_01_2 = {5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 43 00 52 00 59 00 50 00 54 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 } //01 00 
		$a_01_3 = {4f 00 70 00 65 00 6e 00 00 00 00 00 53 00 65 00 6e 00 64 00 00 00 00 00 } //01 00 
		$a_01_4 = {72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 54 00 65 00 78 00 74 00 00 00 00 00 53 00 74 00 61 00 74 00 75 00 73 00 00 00 00 00 } //01 00 
		$a_01_5 = {5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //01 00 
		$a_01_6 = {5c 00 4f 00 70 00 65 00 72 00 61 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4f 00 70 00 65 00 72 00 61 00 20 00 53 00 74 00 61 00 62 00 6c 00 65 00 } //01 00 
		$a_00_7 = {52 00 75 00 6e 00 00 00 40 00 00 00 } //01 00 
		$a_01_8 = {44 65 63 72 79 70 74 42 79 74 65 00 } //00 00 
		$a_00_9 = {80 10 00 00 } //2a 58 
	condition:
		any of ($a_*)
 
}