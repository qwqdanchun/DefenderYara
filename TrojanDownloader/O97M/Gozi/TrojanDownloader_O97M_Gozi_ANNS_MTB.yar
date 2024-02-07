
rule TrojanDownloader_O97M_Gozi_ANNS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Gozi.ANNS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 22 65 78 70 6c 6f 72 65 72 20 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 02 25 2e 68 74 61 22 90 00 } //01 00 
		$a_01_1 = {50 75 62 6c 69 63 20 53 75 62 20 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //01 00  Public Sub button1_Click()
		$a_03_2 = {2e 65 78 65 63 20 74 67 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_3 = {66 72 6d 2e 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b } //01 00  frm.button1_Click
		$a_01_4 = {3d 20 53 70 6c 69 74 28 66 72 6d 2e 74 67 2c 20 22 20 22 29 } //01 00  = Split(frm.tg, " ")
		$a_01_5 = {3c 68 74 6d 6c 3e 3c 62 6f 64 79 3e 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c } //01 00  <html><body><div id='content'>fTtl
		$a_01_6 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //00 00  = CreateObject("wscript.shell")
	condition:
		any of ($a_*)
 
}