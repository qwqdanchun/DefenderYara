
rule TrojanDownloader_O97M_IcedID_DRZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.DRZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 65 78 65 63 20 70 28 90 02 13 29 90 00 } //01 00 
		$a_01_1 = {50 75 62 6c 69 63 20 53 75 62 20 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //01 00  Public Sub button1_Click()
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //01 00  = CreateObject("wscript.shell")
		$a_01_3 = {3d 20 70 28 66 72 6d 2e 62 75 74 74 6f 6e 31 2e 43 61 70 74 69 6f 6e 29 } //01 00  = p(frm.button1.Caption)
		$a_03_4 = {66 72 6d 2e 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_5 = {3c 68 74 6d 6c 3e 3c 62 6f 64 79 3e 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c } //01 00  <html><body><div id='content'>fTtl
		$a_01_6 = {54 69 6d 65 6f 75 74 20 3d 20 36 30 30 } //01 00  Timeout = 600
		$a_03_7 = {3d 20 2e 54 61 67 90 0c 02 00 45 6e 64 20 57 69 74 68 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_8 = {3d 20 2e 43 61 70 74 69 6f 6e 90 0c 02 00 45 6e 64 20 57 69 74 68 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}