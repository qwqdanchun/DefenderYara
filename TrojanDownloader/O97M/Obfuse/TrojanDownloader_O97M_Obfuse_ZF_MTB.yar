
rule TrojanDownloader_O97M_Obfuse_ZF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ZF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,1b 00 1b 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 67 65 74 77 63 28 29 } //0f 00  Public Function getwc()
		$a_01_1 = {67 65 74 77 63 20 3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 6e 65 78 74 54 65 78 74 43 6c 65 61 72 2e 68 74 61 22 } //0f 00  getwc = "explorer.exe c:\programdata\nextTextClear.hta"
		$a_01_2 = {67 65 74 77 63 20 3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 63 6f 75 6e 74 65 72 43 6f 75 6e 74 56 62 2e 68 74 61 22 } //0f 00  getwc = "explorer.exe c:\programdata\counterCountVb.hta"
		$a_01_3 = {67 65 74 77 63 20 3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 70 72 6f 63 65 64 75 72 65 54 65 6d 70 2e 68 74 61 22 } //0f 00  getwc = "explorer.exe c:\programdata\procedureTemp.hta"
		$a_01_4 = {67 65 74 77 63 20 3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 73 77 61 70 43 6f 75 6e 74 65 72 56 61 72 69 61 62 6c 65 2e 68 74 61 22 } //0f 00  getwc = "explorer.exe c:\programdata\swapCounterVariable.hta"
		$a_01_5 = {67 65 74 77 63 20 3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 71 75 65 72 79 4c 65 66 74 2e 68 74 61 22 } //0f 00  getwc = "explorer.exe c:\programdata\queryLeft.hta"
		$a_01_6 = {67 65 74 77 63 20 3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 72 65 73 70 6f 6e 73 65 53 77 61 70 4d 65 6d 2e 68 74 61 22 } //01 00  getwc = "explorer.exe c:\programdata\responseSwapMem.hta"
		$a_01_7 = {50 75 62 6c 69 63 20 53 75 62 20 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //01 00  Public Sub button1_Click()
		$a_01_8 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //01 00  = CreateObject("wscript.shell")
		$a_01_9 = {2e 65 78 65 63 20 70 28 67 65 74 77 63 29 } //01 00  .exec p(getwc)
		$a_03_10 = {3d 20 52 65 70 6c 61 63 65 28 90 02 19 2c 20 90 02 1e 2c 20 90 02 19 29 90 00 } //01 00 
		$a_01_11 = {3d 20 53 70 6c 69 74 28 70 28 66 72 6d 2e 67 65 74 77 63 29 2c 20 22 20 22 29 } //01 00  = Split(p(frm.getwc), " ")
		$a_03_12 = {70 20 3d 20 90 02 0f 28 90 02 19 2c 20 22 40 22 2c 20 22 22 29 90 00 } //05 00 
		$a_03_13 = {3d 20 61 6d 64 28 90 02 23 22 62 6f 64 79 3e 3c 2f 68 74 6d 6c 3e 22 29 90 00 } //05 00 
		$a_03_14 = {3d 20 61 6d 64 28 22 3c 68 74 6d 6c 3e 3c 62 6f 64 79 3e 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c 63 32 39 73 59 79 35 90 01 17 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}