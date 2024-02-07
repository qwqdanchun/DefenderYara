
rule TrojanSpy_Win32_Bancos_AGB{
	meta:
		description = "TrojanSpy:Win32/Bancos.AGB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {c7 44 24 04 00 00 00 00 c7 04 24 02 00 00 00 e8 90 01 04 83 ec 08 89 45 f4 83 7d f4 ff 75 0f c7 85 b0 fe 90 01 02 00 00 00 00 e9 e0 00 00 00 c7 85 b8 fe 90 01 02 28 01 00 00 90 00 } //01 00 
		$a_00_1 = {26 26 20 63 64 20 3e 20 25 73 67 65 74 70 61 74 68 2e 74 78 74 20 26 26 20 65 78 69 74 } //01 00  && cd > %sgetpath.txt && exit
		$a_00_2 = {61 72 71 75 69 76 6f 20 70 72 65 66 73 2e 6a 73 0a 00 75 73 65 72 5f 70 72 65 66 28 22 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 61 75 74 6f 63 6f 6e 66 69 67 5f 75 72 6c 22 2c 20 22 25 73 22 29 3b } //01 00 
		$a_00_3 = {75 73 65 72 5f 70 72 65 66 28 22 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 74 79 70 65 22 2c 20 32 29 3b } //00 00  user_pref("network.proxy.type", 2);
	condition:
		any of ($a_*)
 
}