
rule VirTool_WinNT_Vanti_gen_B{
	meta:
		description = "VirTool:WinNT/Vanti.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 5f 72 65 67 73 00 } //01 00 
		$a_01_1 = {01 00 00 81 ea 07 00 22 00 0f 84 } //01 00 
		$a_01_2 = {74 0f 3c 61 7c 08 3c 7a 7f 04 2c 20 88 01 41 eb eb } //01 00 
		$a_01_3 = {83 45 fc 40 81 c3 0a 02 00 00 81 fb } //02 00 
		$a_01_4 = {8d 4d fc 51 8d 4d fc 6a 00 51 6a 0b a3 } //02 00 
		$a_01_5 = {81 7b 20 88 88 88 88 0f 84 } //03 00 
		$a_01_6 = {69 c0 1c 01 00 00 83 c0 04 68 44 64 6b 20 } //04 00 
		$a_03_7 = {8b 70 1c 8b 48 20 8b 78 24 8b 40 18 83 65 f8 00 03 f3 03 cb 03 fb 85 c0 89 45 f0 76 90 01 01 89 4d f4 8b 45 0c 89 45 fc 8b 45 f4 8b 10 03 d3 90 00 } //04 00 
		$a_03_8 = {89 04 8a ff 45 fc 83 7d fc 2b 72 90 01 01 fb 8b 45 c8 0f 22 c0 90 00 } //08 00 
		$a_03_9 = {0f 20 c0 89 45 90 01 01 25 ff ff fe ff 0f 22 c0 fa c7 43 20 88 88 88 88 90 00 } //01 00 
		$a_01_10 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //00 00  KeServiceDescriptorTable
	condition:
		any of ($a_*)
 
}