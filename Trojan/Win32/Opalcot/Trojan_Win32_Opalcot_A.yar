
rule Trojan_Win32_Opalcot_A{
	meta:
		description = "Trojan:Win32/Opalcot.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0d 00 0c 00 00 02 00 "
		
	strings :
		$a_00_0 = {74 05 80 38 b8 74 03 33 c0 c3 8b 40 01 8b 4c 24 08 89 01 33 c0 40 } //02 00 
		$a_00_1 = {c7 06 5c 11 00 00 83 c7 1e 83 c6 04 ff 4d fc 75 e2 bf 00 90 01 00 57 6a 40 } //02 00 
		$a_00_2 = {8b 45 fc 0f b7 00 8b d8 66 81 e3 00 f0 66 81 fb 00 30 } //02 00 
		$a_00_3 = {66 81 38 4d 5a 75 3c 8b 48 3c 03 c1 b9 50 45 00 00 39 08 75 2e 8b 54 24 08 89 02 39 08 } //01 00 
		$a_00_4 = {6a 08 8d 45 f4 50 68 10 09 32 38 } //01 00 
		$a_00_5 = {40 00 10 33 c9 8a 08 83 f1 } //01 00 
		$a_00_6 = {5f 5f 41 4e 54 49 56 49 52 5f 5f } //01 00  __ANTIVIR__
		$a_00_7 = {53 00 4f 00 55 00 4e 00 44 00 4d 00 00 00 } //01 00 
		$a_01_8 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00  SeDebugPrivilege
		$a_00_9 = {53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 } //01 00  SystemRoot\system32\drivers
		$a_00_10 = {6b 61 76 2e 64 6c 6c } //01 00  kav.dll
		$a_01_11 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //00 00  KeServiceDescriptorTable
	condition:
		any of ($a_*)
 
}