
rule Trojan_O97M_Malgent_F{
	meta:
		description = "Trojan:O97M/Malgent.F,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 3d 20 41 72 72 61 79 28 22 70 72 6f 63 65 73 73 20 65 78 70 6c 6f 72 65 72 22 2c 20 22 70 72 6f 63 65 73 73 68 61 63 6b 65 72 22 2c 20 22 70 72 6f 63 6d 6f 6e 22 2c 20 22 76 69 73 75 61 6c 20 62 61 73 69 63 22 2c 20 22 66 69 64 64 6c 65 72 22 2c 20 22 77 69 72 65 73 68 61 72 6b 22 29 } //01 00   = Array("process explorer", "processhacker", "procmon", "visual basic", "fiddler", "wireshark")
		$a_01_1 = {43 61 6c 6c 20 61 65 4c 68 77 72 74 72 28 64 63 6f 65 28 62 57 4c 61 50 74 68 41 72 72 29 29 } //01 00  Call aeLhwrtr(dcoe(bWLaPthArr))
		$a_01_2 = {70 61 74 68 5f 66 69 6c 65 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 2b 20 22 5c 41 70 70 44 61 74 61 5c 52 6f 61 6d 69 6e 67 5c 22 20 2b 20 22 5c 22 20 2b 20 70 61 74 68 5f 64 6f 6d 20 2b 20 61 20 2b 20 62 20 2b 20 63 } //01 00  path_file = Environ$("USERPROFILE") + "\AppData\Roaming\" + "\" + path_dom + a + b + c
		$a_01_3 = {70 61 74 68 5f 66 69 6c 65 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 20 22 5c 41 70 70 44 61 74 61 5c 22 20 2b 20 70 61 74 68 5f 64 6f 6d 20 2b 20 22 2e 74 74 70 22 } //01 00  path_file = Environ$("USERPROFILE") & "\AppData\" + path_dom + ".ttp"
		$a_01_4 = {56 61 72 69 61 62 6c 65 32 2e 73 61 76 65 74 6f 66 69 6c 65 20 22 32 33 34 2e 65 22 20 26 20 22 78 65 22 2c 20 32 0d 0a 45 78 65 63 75 74 65 45 78 63 65 6c 34 4d 61 63 72 6f 20 52 65 70 6c 61 63 65 28 55 73 65 72 46 6f 72 6d 31 2e } //00 00 
	condition:
		any of ($a_*)
 
}