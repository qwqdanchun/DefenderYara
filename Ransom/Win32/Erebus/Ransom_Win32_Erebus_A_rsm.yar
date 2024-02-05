
rule Ransom_Win32_Erebus_A_rsm{
	meta:
		description = "Ransom:Win32/Erebus.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d 08 57 8b 7e 10 3b f9 72 90 01 01 8b 55 0c 8b c7 2b c1 3b c2 77 90 01 01 83 7e 14 10 89 4e 10 72 90 01 01 8b 06 5f c6 04 08 00 90 00 } //01 00 
		$a_01_1 = {33 db 57 3d 11 27 00 00 0f 8f 0a 0c 00 00 0f 84 ed 0b 00 00 83 c0 fd 3d ec 00 00 00 0f 87 af 1b 00 00 } //01 00 
		$a_00_2 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 } //01 00 
		$a_00_3 = {77 6d 69 63 20 6c 6f 67 69 63 61 6c 64 69 73 6b 20 77 68 65 72 65 20 64 72 69 76 65 74 79 70 65 3d } //01 00 
		$a_00_4 = {2e 61 72 77 00 00 00 00 2e 62 61 79 00 00 00 00 2e 63 64 72 00 00 00 00 2e 63 65 72 } //01 00 
		$a_00_5 = {52 00 65 00 63 00 6f 00 76 00 65 00 72 00 20 00 6d 00 79 00 20 00 66 00 69 00 6c 00 65 00 73 00 3c 00 2f 00 61 00 3e 00 } //01 00 
		$a_00_6 = {3e 00 20 00 43 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 3a 00 20 00 3c 00 } //00 00 
		$a_00_7 = {5d 04 00 00 } //d5 9a 
	condition:
		any of ($a_*)
 
}