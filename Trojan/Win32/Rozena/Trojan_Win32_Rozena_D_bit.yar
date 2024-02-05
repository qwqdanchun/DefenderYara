
rule Trojan_Win32_Rozena_D_bit{
	meta:
		description = "Trojan:Win32/Rozena.D!bit,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 } //01 00 
		$a_01_1 = {70 73 68 63 6d 64 00 43 4d 44 00 73 79 73 74 65 6d 00 } //01 00 
		$a_01_2 = {72 01 00 00 70 28 02 00 00 06 26 2a } //02 00 
		$a_01_3 = {4a 00 41 00 42 00 69 00 41 00 46 00 55 00 41 00 61 00 41 00 42 00 75 00 41 00 43 00 41 00 41 00 50 00 51 00 41 00 67 00 41 00 43 00 63 00 41 00 4a 00 41 00 42 00 53 00 41 00 45 00 67 00 41 00 55 00 67 00 41 00 67 00 41 00 44 00 30 00 41 00 49 00 41 00 41 00 6e 00 41 00 43 00 63 00 41 00 57 00 77 00 42 00 45 00 41 00 47 00 77 00 41 00 62 00 41 00 42 00 4a 00 41 00 47 00 30 00 41 00 63 00 41 00 42 00 76 00 41 00 48 00 49 00 41 00 64 00 41 00 41 00 6f 00 } //01 00 
		$a_01_4 = {57 00 77 00 42 00 45 00 41 00 47 00 77 00 41 00 62 00 41 00 42 00 4a 00 41 00 47 00 30 00 41 00 63 00 41 00 42 00 76 00 41 00 48 00 49 00 41 00 64 00 41 00 41 00 6f 00 41 00 43 00 49 00 41 00 61 00 77 00 42 00 6c 00 41 00 48 00 49 00 41 00 62 00 67 00 42 00 6c 00 41 00 47 00 77 00 41 00 4d 00 77 00 41 00 79 00 41 00 43 00 34 00 41 00 5a 00 41 00 42 00 73 00 41 00 47 00 77 00 41 00 49 00 67 00 41 00 70 00 41 00 46 00 30 00 41 00 63 00 41 00 42 00 31 00 41 00 47 00 49 00 41 00 62 00 41 00 42 00 70 00 41 00 47 00 4d 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}