
rule TrojanDownloader_O97M_Dridex_BVG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.BVG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 4f 70 65 6e 20 90 02 1e 2e 90 02 1e 28 90 02 1e 29 2c 20 90 02 1e 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_03_1 = {49 66 20 2e 53 74 61 74 75 73 20 3d 20 43 4c 6e 67 28 28 90 02 1e 29 29 20 41 6e 64 20 4c 65 6e 28 2e 72 65 73 70 6f 6e 73 65 42 6f 64 79 29 20 3e 20 43 4c 6e 67 28 28 90 02 1e 29 29 20 54 68 65 6e 90 00 } //01 00 
		$a_03_2 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 90 02 1e 2e 90 02 1e 28 29 20 26 20 90 02 1e 2e 90 02 1e 28 90 02 1e 29 2c 20 43 4c 6e 67 28 28 90 00 } //01 00 
		$a_01_3 = {4d 73 67 20 3d 20 22 54 68 61 6e 6b 20 59 6f 75 21 22 } //01 00  Msg = "Thank You!"
		$a_01_4 = {4d 73 67 42 6f 78 20 4d 73 67 2c 20 2c 20 22 4f 4b 22 2c 20 45 72 72 2e 48 65 6c 70 46 69 6c 65 2c 20 45 72 72 2e 48 65 6c 70 43 6f 6e 74 65 78 74 } //01 00  MsgBox Msg, , "OK", Err.HelpFile, Err.HelpContext
		$a_01_5 = {4d 73 67 42 6f 78 20 4d 73 67 2c 20 2c 20 22 47 6f 6f 64 22 2c 20 45 72 72 2e 48 65 6c 70 46 69 6c 65 2c 20 45 72 72 2e 48 65 6c 70 43 6f 6e 74 65 78 74 } //01 00  MsgBox Msg, , "Good", Err.HelpFile, Err.HelpContext
		$a_01_6 = {4d 73 67 42 6f 78 20 4d 73 67 2c 20 2c 20 49 73 44 61 74 65 28 31 29 2c 20 45 72 72 2e 48 65 6c 70 46 69 6c 65 2c 20 45 72 72 2e 48 65 6c 70 43 6f 6e 74 65 78 74 } //01 00  MsgBox Msg, , IsDate(1), Err.HelpFile, Err.HelpContext
		$a_01_7 = {3d 20 4a 6f 69 6e 28 41 72 72 61 79 28 } //01 00  = Join(Array(
		$a_01_8 = {3d 20 52 65 70 6c 61 63 65 28 22 } //01 00  = Replace("
		$a_01_9 = {49 66 20 45 72 72 2e 4e 75 6d 62 65 72 20 3c 3e 20 30 20 54 68 65 6e } //00 00  If Err.Number <> 0 Then
	condition:
		any of ($a_*)
 
}