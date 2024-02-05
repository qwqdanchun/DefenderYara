
rule Ransom_Win32_Wyhymyz_B{
	meta:
		description = "Ransom:Win32/Wyhymyz.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 04 00 "
		
	strings :
		$a_03_0 = {80 7d f4 48 90 02 04 80 7d f5 45 90 02 04 80 7d f6 52 90 02 04 80 7d f7 4d 90 02 04 80 7d f8 45 90 02 04 80 7d f9 53 90 00 } //02 00 
		$a_80_1 = {5c 44 45 43 52 59 50 54 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e 2e 74 78 74 } //\DECRYPT_INFORMATION.txt  01 00 
		$a_80_2 = {4d 6f 6c 56 66 66 51 75 44 74 55 50 6c 77 54 4e 65 41 45 47 6f 59 77 62 5a 47 49 4c 57 } //MolVffQuDtUPlwTNeAEGoYwbZGILW  01 00 
		$a_03_3 = {6a 01 68 10 66 00 00 ff 90 01 02 ff 15 90 00 } //01 00 
		$a_80_4 = {73 68 61 64 6f 77 73 74 6f 72 61 67 65 20 76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 76 73 73 61 64 6d 69 6e 20 72 65 73 69 7a 65 20 2e 64 73 6b } //shadowstorage vssadmin Delete vssadmin resize .dsk  00 00 
		$a_00_5 = {5d 04 00 00 a8 } //a9 03 
	condition:
		any of ($a_*)
 
}