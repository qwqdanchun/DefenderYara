
rule Trojan_BAT_Tnega_MD_MTB{
	meta:
		description = "Trojan:BAT/Tnega.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {7c 00 68 00 7c 00 74 00 7c 00 74 00 7c 00 70 00 7c 00 73 00 7c 00 3a 00 7c 00 2f 00 7c 00 2f 00 7c 00 74 00 7c 00 65 00 7c 00 78 00 7c 00 74 00 7c 00 62 00 7c 00 69 00 7c 00 6e 00 7c 00 2e 00 7c 00 6e 00 7c 00 65 00 7c 00 74 00 7c 00 2f 00 7c 00 } //01 00  |h|t|t|p|s|:|/|/|t|e|x|t|b|i|n|.|n|e|t|/|
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 } //01 00  SELECT * FROM Credentials
		$a_01_2 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_3 = {43 65 6e 74 65 72 54 6f 53 63 72 65 65 6e } //01 00  CenterToScreen
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_5 = {5f 74 78 74 50 61 73 73 77 6f 72 64 } //01 00  _txtPassword
		$a_01_6 = {55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 3a 00 } //01 00  Username:
		$a_01_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}