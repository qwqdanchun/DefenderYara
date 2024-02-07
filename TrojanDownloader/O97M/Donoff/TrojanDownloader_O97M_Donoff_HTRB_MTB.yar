
rule TrojanDownloader_O97M_Donoff_HTRB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.HTRB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 61 74 4c 69 62 52 65 66 20 3d 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 62 6f 72 64 65 72 43 75 72 72 2e 68 74 61 } //01 00  datLibRef = "c:\programdata\borderCurr.hta
		$a_01_1 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 22 20 26 20 64 61 74 4c 69 62 52 65 66 29 } //01 00  = Shell("cmd /c " & datLibRef)
		$a_03_2 = {4f 70 65 6e 20 64 61 74 4c 69 62 52 65 66 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 0c 02 00 50 72 69 6e 74 20 23 31 2c 90 00 } //01 00 
		$a_03_3 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}