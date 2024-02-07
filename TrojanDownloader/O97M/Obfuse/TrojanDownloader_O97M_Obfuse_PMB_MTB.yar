
rule TrojanDownloader_O97M_Obfuse_PMB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PMB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 43 68 72 28 41 73 63 28 43 75 72 72 65 6e 74 4c 65 74 74 65 72 29 20 2d 20 56 61 6c 28 4d 69 64 28 69 4b 65 79 2c 20 69 4b 65 79 50 6f 73 2c 20 31 29 29 29 } //01 00  = Chr(Asc(CurrentLetter) - Val(Mid(iKey, iKeyPos, 1)))
		$a_01_1 = {46 75 6e 63 74 69 6f 6e 20 73 61 63 73 61 28 73 61 63 78 73 61 78 73 61 61 20 41 73 20 53 74 72 69 6e 67 29 } //01 00  Function sacsa(sacxsaxsaa As String)
		$a_01_2 = {73 6f 70 76 64 20 3d 20 22 57 53 63 72 69 70 74 2e 22 20 2b 20 22 53 68 65 22 20 2b 20 22 6c 6c 22 } //01 00  sopvd = "WScript." + "She" + "ll"
		$a_01_3 = {53 65 74 20 57 73 68 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 73 6f 70 76 64 29 } //01 00  Set WshShell = CreateObject(sopvd)
		$a_01_4 = {53 68 65 6c 6c 20 73 61 63 78 73 61 78 73 61 61 } //01 00  Shell sacxsaxsaa
		$a_01_5 = {53 65 74 20 57 73 68 53 68 65 6c 6c 20 3d 20 4e 6f 74 68 69 6e 67 } //01 00  Set WshShell = Nothing
		$a_01_6 = {27 73 68 65 6c 6c 20 28 78 29 } //01 00  'shell (x)
		$a_01_7 = {49 66 20 4e 6f 74 20 41 73 63 28 43 75 72 72 65 6e 74 4c 65 74 74 65 72 29 20 2b 20 4c 65 6e 28 69 4b 65 79 29 20 3e 20 32 35 35 } //01 00  If Not Asc(CurrentLetter) + Len(iKey) > 255
		$a_01_8 = {3b 44 5c 6a 45 74 44 4a 58 44 5c 7a 45 33 44 46 44 44 } //00 00  ;D\jEtDJXD\zE3DFDD
	condition:
		any of ($a_*)
 
}