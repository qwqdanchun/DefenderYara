
rule TrojanDownloader_O97M_IcedID_RVQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RVQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 2e 52 65 67 57 72 69 74 65 20 6c 69 73 74 43 6f 6e 73 74 2c 20 31 2c 20 22 52 45 47 5f 44 57 4f 52 44 22 } //01 00  CreateObject("wscript.shell").RegWrite listConst, 1, "REG_DWORD"
		$a_03_1 = {6c 65 6e 67 74 68 20 3d 20 4c 65 6e 28 90 02 14 29 0d 0a 46 6f 72 20 69 20 3d 20 30 20 54 6f 20 6c 65 6e 67 74 68 20 2d 20 31 90 00 } //01 00 
		$a_03_2 = {72 65 76 65 72 73 65 64 54 65 78 74 20 26 20 4d 69 64 28 90 02 14 2c 20 28 6c 65 6e 67 74 68 20 2d 20 69 29 2c 20 31 29 90 00 } //01 00 
		$a_01_3 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 22 22 2c 20 22 77 6f 72 64 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //01 00  = GetObject("", "word.application")
		$a_01_4 = {3d 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 4f 66 66 69 63 65 5c 22 20 26 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 56 65 72 73 69 6f 6e 20 26 20 22 5c 57 6f 72 64 5c 53 65 63 75 72 69 74 79 5c 41 63 63 65 73 73 56 42 4f 4d 22 } //01 00  = "HKEY_CURRENT_USER\Software\Microsoft\Office\" & Application.Version & "\Word\Security\AccessVBOM"
		$a_01_5 = {2e 51 75 69 74 20 53 61 76 65 43 68 61 6e 67 65 73 3a 3d 77 64 44 6f 4e 6f 74 53 61 76 65 43 68 61 6e 67 65 73 } //01 00  .Quit SaveChanges:=wdDoNotSaveChanges
		$a_01_6 = {76 61 6c 75 65 45 78 28 63 6f 75 6e 74 54 69 74 6c 65 2c 20 38 20 2f 20 34 2c 20 31 35 30 30 30 30 30 29 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //01 00 
		$a_01_7 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}