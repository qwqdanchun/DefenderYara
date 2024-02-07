
rule TrojanSpy_Win32_Bebloh_A{
	meta:
		description = "TrojanSpy:Win32/Bebloh.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 02 00 "
		
	strings :
		$a_00_0 = {49 44 3d 58 35 43 56 38 39 42 42 31 37 4c 48 59 54 38 39 54 30 } //02 00  ID=X5CV89BB17LHYT89T0
		$a_00_1 = {74 68 65 62 61 74 2e 65 78 65 00 00 6d 73 69 6d 6e 2e 65 78 65 00 00 00 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 } //02 00 
		$a_00_2 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 00 00 00 00 6d 79 69 65 2e 65 78 65 00 } //02 00 
		$a_00_3 = {49 63 6f 64 65 65 6e 64 3d 7c 00 00 49 69 6e 6a 65 63 74 3d 7c 00 00 00 49 66 6f 72 6d 3d 7c 00 } //01 00 
		$a_00_4 = {5a 77 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //07 00  ZwWriteVirtualMemory
		$a_01_5 = {8b fe 03 ff 80 7c fb 08 05 75 6c 8b 44 fb 04 3b 45 f4 75 63 6a 02 6a 00 6a 00 8d 45 ec 50 6a ff 0f b7 44 fb 0a 50 } //02 00 
		$a_02_6 = {04 48 4b 45 59 04 90 01 0e 05 48 48 4f 4f 4b 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}