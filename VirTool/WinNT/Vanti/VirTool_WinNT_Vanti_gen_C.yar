
rule VirTool_WinNT_Vanti_gen_C{
	meta:
		description = "VirTool:WinNT/Vanti.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 83 f8 09 89 45 fc 72 } //02 00 
		$a_03_1 = {8b 41 3c 57 8b 74 08 78 03 f1 39 55 0c 74 90 01 01 8b 7e 1c 8b 46 20 8b 5e 24 90 00 } //02 00 
		$a_03_2 = {8d 45 fc 50 8d 45 fc 53 50 6a 0b ff 15 90 01 02 01 00 90 00 } //02 00 
		$a_01_3 = {81 7a 20 88 88 88 88 } //05 00 
		$a_03_4 = {0f 20 c0 89 45 90 01 01 25 ff ff fe ff 0f 22 c0 fa 90 00 } //02 00 
		$a_01_5 = {c7 47 20 88 88 88 88 } //03 00 
		$a_03_6 = {0f 22 c0 6a 01 90 09 04 00 fb 8b 45 90 00 } //01 00 
		$a_01_7 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //01 00  KeServiceDescriptorTable
		$a_01_8 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  ZwQuerySystemInformation
		$a_01_9 = {5c 69 33 38 36 5c 72 69 73 69 6e 67 2e 73 79 73 } //01 00  \i386\rising.sys
		$a_03_10 = {5c 69 33 38 36 5c 6e 6f 64 33 32 90 02 08 2e 73 79 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}