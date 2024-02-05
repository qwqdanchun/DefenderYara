
rule Ransom_Win32_Filecoder_P_MSR{
	meta:
		description = "Ransom:Win32/Filecoder.P!MSR,SIGNATURE_TYPE_PEHSTR,04 00 03 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {4e 00 65 00 77 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 43 00 72 00 79 00 70 00 74 00 20 00 66 00 72 00 6f 00 6d 00 20 00 48 00 75 00 6d 00 62 00 6c 00 65 00 20 00 55 00 73 00 65 00 72 00 3a 00 25 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 25 00 20 00 4b 00 65 00 79 00 3a 00 7c 00 7c 00 25 00 72 00 61 00 6e 00 64 00 6f 00 6d 00 6c 00 65 00 74 00 74 00 65 00 72 00 25 00 7c 00 7c 00 } //02 00 
		$a_01_1 = {4f 00 6f 00 6f 00 70 00 73 00 21 00 20 00 59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 61 00 73 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //02 00 
		$a_01_2 = {49 00 66 00 20 00 79 00 6f 00 75 00 20 00 64 00 6f 00 6e 00 74 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 70 00 61 00 79 00 20 00 74 00 68 00 65 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 6e 00 64 00 20 00 4d 00 42 00 52 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 64 00 } //02 00 
		$a_01_3 = {4f 6f 6f 70 73 21 20 59 6f 75 72 20 4d 42 52 20 77 61 73 20 62 65 65 6e 20 72 65 77 72 69 74 74 65 6e } //02 00 
		$a_01_4 = {74 68 69 73 20 72 61 6e 73 6f 6d 77 61 72 65 20 64 6f 6e 74 20 65 6e 63 72 79 70 74 20 79 6f 75 72 20 66 69 6c 65 73 2c 20 65 72 61 73 65 73 20 69 74 } //01 00 
		$a_01_5 = {44 00 69 00 73 00 63 00 6f 00 72 00 64 00 53 00 65 00 6e 00 64 00 57 00 65 00 62 00 68 00 6f 00 6f 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_6 = {2f 00 76 00 20 00 22 00 50 00 61 00 79 00 6c 00 6f 00 61 00 64 00 22 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 20 00 22 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 2d 00 76 00 65 00 72 00 62 00 20 00 72 00 75 00 6e 00 61 00 73 00 20 00 27 00 22 00 25 00 30 00 22 00 27 00 20 00 61 00 6d 00 5f 00 61 00 64 00 6d 00 69 00 6e 00 20 00 2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 22 00 } //00 00 
		$a_01_7 = {00 5d } //04 00 
	condition:
		any of ($a_*)
 
}