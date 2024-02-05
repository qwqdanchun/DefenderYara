
rule PWS_Win32_Tamenoc_A{
	meta:
		description = "PWS:Win32/Tamenoc.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {fb 13 71 20 ff 6c 20 ff ec f4 18 eb b6 fb e7 fc 10 6c 24 ff 04 5c ff fc a0 6c 20 ff f5 18 00 00 00 c2 } //02 00 
		$a_01_1 = {45 00 38 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 38 00 33 00 32 00 43 00 32 00 34 00 30 00 35 00 35 00 35 00 38 00 39 00 45 00 35 00 38 00 33 00 45 00 43 00 34 00 30 00 36 00 34 00 41 00 31 00 33 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 38 00 42 00 34 00 30 00 30 00 43 00 38 00 42 00 34 00 30 00 31 00 43 00 38 00 42 00 30 00 30 00 38 00 42 00 34 00 30 00 30 00 38 00 } //01 00 
		$a_01_2 = {64 00 72 00 6f 00 77 00 73 00 73 00 61 00 50 00 5c 00 43 00 55 00 44 00 5c 00 73 00 6b 00 72 00 65 00 77 00 6c 00 61 00 74 00 69 00 56 00 5c 00 45 00 52 00 41 00 57 00 54 00 46 00 4f 00 53 00 5c 00 45 00 4e 00 49 00 48 00 43 00 41 00 4d 00 5f 00 4c 00 41 00 43 00 4f 00 4c 00 5f 00 59 00 45 00 4b 00 48 00 } //01 00 
		$a_01_3 = {68 00 74 00 61 00 50 00 6d 00 61 00 65 00 74 00 53 00 5c 00 6d 00 61 00 65 00 74 00 53 00 5c 00 65 00 76 00 6c 00 61 00 56 00 5c 00 65 00 72 00 61 00 77 00 74 00 66 00 6f 00 53 00 5c 00 52 00 45 00 53 00 55 00 5f 00 54 00 4e 00 45 00 52 00 52 00 55 00 43 00 5f 00 59 00 45 00 4b 00 48 00 } //01 00 
		$a_01_4 = {74 00 63 00 65 00 6a 00 62 00 4f 00 6d 00 65 00 74 00 73 00 79 00 53 00 65 00 6c 00 69 00 46 00 2e 00 67 00 6e 00 69 00 74 00 70 00 69 00 72 00 63 00 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}