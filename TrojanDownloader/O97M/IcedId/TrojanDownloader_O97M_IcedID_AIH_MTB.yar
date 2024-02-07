
rule TrojanDownloader_O97M_IcedID_AIH_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.AIH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 65 78 65 63 20 52 65 70 6c 61 63 65 28 90 02 25 2c 20 22 31 22 2c 20 22 22 29 20 26 20 22 20 22 20 26 20 52 65 70 6c 61 63 65 28 90 02 25 20 22 31 22 2c 20 22 22 29 90 00 } //01 00 
		$a_01_1 = {3d 20 74 72 28 22 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c } //01 00  = tr("<div id='content'>fTtl
		$a_01_2 = {3d 20 52 65 70 6c 61 63 65 28 66 72 6d 2e 63 62 74 6e 31 2e 43 61 70 74 69 6f 6e 2c 20 22 31 22 2c 20 22 22 29 } //01 00  = Replace(frm.cbtn1.Caption, "1", "")
		$a_01_3 = {3d 20 66 72 6d 2e 63 62 74 6e 31 2e 43 61 70 74 69 6f 6e } //01 00  = frm.cbtn1.Caption
		$a_01_4 = {66 72 6d 2e 63 62 74 6e 31 5f 43 6c 69 63 6b } //01 00  frm.cbtn1_Click
		$a_01_5 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //01 00  = CreateObject("wscript.shell")
		$a_01_6 = {2e 73 70 6c 69 74 28 27 } //01 00  .split('
		$a_01_7 = {54 69 6d 65 6f 75 74 20 3d 20 36 30 30 } //01 00  Timeout = 600
		$a_01_8 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //01 00  Sub autoopen()
		$a_03_9 = {45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}