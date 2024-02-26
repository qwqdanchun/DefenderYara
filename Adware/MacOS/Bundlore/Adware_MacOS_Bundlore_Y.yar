
rule Adware_MacOS_Bundlore_Y{
	meta:
		description = "Adware:MacOS/Bundlore.Y,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 4c 00 53 00 51 00 75 00 61 00 72 00 61 00 6e 00 74 00 69 00 6e 00 65 00 44 00 61 00 74 00 61 00 55 00 52 00 4c 00 53 00 74 00 72 00 69 00 6e 00 67 00 20 00 46 00 52 00 4f 00 4d 00 20 00 4c 00 53 00 51 00 75 00 61 00 72 00 61 00 6e 00 74 00 69 00 6e 00 65 00 45 00 76 00 65 00 6e 00 74 00 20 00 4f 00 52 00 44 00 45 00 52 00 20 00 42 00 59 00 20 00 4c 00 53 00 51 00 75 00 61 00 72 00 61 00 6e 00 74 00 69 00 6e 00 65 00 54 00 69 00 6d 00 65 00 53 00 74 00 61 00 6d 00 70 00 } //01 00  SELECT LSQuarantineDataURLString FROM LSQuarantineEvent ORDER BY LSQuarantineTimeStamp
		$a_02_1 = {6b 00 69 00 6c 00 6c 00 61 00 6c 00 6c 00 90 02 04 54 00 65 00 72 00 6d 00 69 00 6e 00 61 00 6c 00 90 00 } //01 00 
		$a_02_2 = {28 00 75 00 75 00 69 00 64 00 67 00 65 00 6e 00 29 00 90 02 10 20 00 63 00 75 00 72 00 6c 00 20 00 2d 00 66 00 20 00 2d 00 73 00 20 00 2d 00 6f 00 20 00 90 00 } //01 00 
		$a_02_3 = {2f 00 75 00 73 00 72 00 2f 00 62 00 69 00 6e 00 2f 00 6d 00 6b 00 74 00 65 00 6d 00 70 00 20 00 2d 00 64 00 90 02 40 28 00 75 00 75 00 69 00 64 00 67 00 65 00 6e 00 29 00 90 02 10 74 00 61 00 72 00 20 00 2d 00 78 00 7a 00 66 00 90 00 } //01 00 
		$a_02_4 = {72 00 6d 00 20 00 2d 00 72 00 66 00 90 02 20 3b 00 7d 00 3b 00 6d 00 61 00 69 00 6e 00 90 02 04 68 00 74 00 74 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}