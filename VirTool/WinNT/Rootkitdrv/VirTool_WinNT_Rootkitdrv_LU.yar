
rule VirTool_WinNT_Rootkitdrv_LU{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.LU,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 73 00 68 00 65 00 6c 00 6c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 6f 00 62 00 6a 00 65 00 63 00 74 00 64 00 65 00 6c 00 61 00 79 00 6c 00 6f 00 61 00 64 00 5c 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 } //01 00  \shellserviceobjectdelayload\network
		$a_00_1 = {7b 00 66 00 63 00 30 00 35 00 35 00 65 00 37 00 64 00 2d 00 38 00 31 00 34 00 34 00 2d 00 34 00 37 00 30 00 36 00 2d 00 38 00 35 00 38 00 36 00 2d 00 32 00 66 00 31 00 63 00 34 00 39 00 66 00 63 00 64 00 64 00 32 00 61 00 7d 00 } //01 00  {fc055e7d-8144-4706-8586-2f1c49fcdd2a}
		$a_03_2 = {80 7d ff 00 5f 5e 74 10 80 3d 90 01 02 01 00 00 74 07 b8 22 00 00 c0 eb 0c ff 75 0c ff 75 08 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}