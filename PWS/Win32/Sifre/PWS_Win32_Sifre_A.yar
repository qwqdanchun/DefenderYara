
rule PWS_Win32_Sifre_A{
	meta:
		description = "PWS:Win32/Sifre.A,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 09 00 00 0f 00 "
		
	strings :
		$a_01_0 = {48 00 41 00 4b 00 4f 00 50 00 53 00 20 00 4c 00 4f 00 47 00 47 00 45 00 52 00 20 00 76 00 } //05 00 
		$a_01_1 = {45 00 6b 00 72 00 61 00 6e 00 47 00 6f 00 72 00 75 00 6e 00 74 00 75 00 73 00 75 00 2e 00 6a 00 70 00 67 00 } //02 00 
		$a_01_2 = {43 00 44 00 4f 00 2e 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //01 00 
		$a_01_3 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //01 00 
		$a_01_4 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 63 00 65 00 6e 00 74 00 65 00 72 00 } //01 00 
		$a_01_5 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 } //05 00 
		$a_01_6 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 41 00 72 00 63 00 68 00 69 00 76 00 65 00 73 00 5c 00 53 00 53 00 2e 00 6a 00 70 00 67 00 } //02 00 
		$a_01_7 = {5c 00 46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 5c 00 72 00 65 00 63 00 65 00 6e 00 74 00 73 00 65 00 72 00 76 00 65 00 72 00 73 00 2e 00 78 00 6d 00 6c 00 } //03 00 
		$a_01_8 = {5c 00 53 00 69 00 66 00 72 00 65 00 6c 00 65 00 72 00 2e 00 74 00 78 00 74 00 } //00 00 
		$a_00_9 = {80 10 00 00 c4 50 f6 04 d6 bd 6b 70 81 81 22 } //4f ef 
	condition:
		any of ($a_*)
 
}