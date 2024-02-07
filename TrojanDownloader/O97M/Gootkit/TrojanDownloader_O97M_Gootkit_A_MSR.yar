
rule TrojanDownloader_O97M_Gootkit_A_MSR{
	meta:
		description = "TrojanDownloader:O97M/Gootkit.A!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e } //01 00  CreateObject("WScript.Shell").Run
		$a_02_1 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 90 02 0a 20 3d 20 30 90 02 10 20 90 0f 03 00 90 02 10 20 90 0f 03 00 90 02 10 20 90 0f 03 00 90 02 10 20 90 0f 03 00 90 02 10 20 90 0f 03 00 90 02 10 20 90 0f 03 00 90 02 10 20 90 0f 03 00 90 00 } //01 00 
		$a_02_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 90 02 20 45 6e 64 20 53 75 62 90 01 02 50 72 69 76 61 74 65 20 46 75 6e 63 74 69 6f 6e 90 02 a0 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 01 02 50 72 69 76 61 74 65 20 46 75 6e 63 74 69 6f 6e 90 02 70 45 6e 64 20 49 66 90 01 02 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
		$a_00_3 = {5d 04 00 00 75 f5 } //03 80 
	condition:
		any of ($a_*)
 
}