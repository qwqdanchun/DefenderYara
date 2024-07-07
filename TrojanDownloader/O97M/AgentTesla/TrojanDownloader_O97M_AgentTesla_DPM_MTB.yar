
rule TrojanDownloader_O97M_AgentTesla_DPM_MTB{
	meta:
		description = "TrojanDownloader:O97M/AgentTesla.DPM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {2d 6e 65 77 6e 61 6d 65 7b 24 5f 2d 72 65 70 6c 61 63 65 27 74 6d 70 24 27 2c 27 65 78 65 27 7d 70 61 73 73 74 68 72 75 3b 69 6e 76 6f 6b 65 2d 77 65 62 72 65 71 75 65 73 74 2d 75 72 69 22 22 68 74 74 70 3a 2f 2f 33 2e 36 35 2e 32 2e 31 33 39 2f 72 65 61 64 2f 90 02 0c 2e 65 78 65 22 22 2d 6f 75 74 66 69 6c 65 24 74 65 6d 70 66 69 6c 65 3b 90 00 } //1
		$a_03_1 = {2d 6e 65 77 6e 61 6d 65 7b 24 5f 2d 72 65 70 6c 61 63 65 27 74 6d 70 24 27 2c 27 65 78 65 27 7d 70 61 73 73 74 68 72 75 3b 69 6e 76 6f 6b 65 2d 77 65 62 72 65 71 75 65 73 74 2d 75 72 69 22 22 68 74 74 70 3a 2f 2f 31 37 33 2e 32 33 32 2e 31 34 36 2e 37 38 2f 35 30 35 2f 90 02 1f 6a 70 67 2e 65 78 65 22 22 2d 6f 75 74 66 69 6c 65 24 74 65 6d 70 66 69 6c 65 3b 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}