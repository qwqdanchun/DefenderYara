
rule TrojanSpy_BAT_Keylogger_BQ{
	meta:
		description = "TrojanSpy:BAT/Keylogger.BQ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 6e 64 54 6f 53 65 72 76 00 } //01 00 
		$a_01_1 = {4b 69 6c 6c 50 72 6f 63 65 73 73 41 6e 64 43 68 69 6c 64 72 65 6e 00 } //01 00 
		$a_01_2 = {67 65 74 6c 6f 67 00 } //01 00 
		$a_01_3 = {48 6f 6f 6b 44 65 6c 00 } //01 00  潈歯敄l
		$a_01_4 = {2f 00 67 00 65 00 74 00 64 00 61 00 74 00 61 00 2f 00 67 00 65 00 74 00 64 00 61 00 74 00 61 00 2e 00 70 00 68 00 70 00 3f 00 74 00 79 00 70 00 65 00 31 00 3d 00 63 00 26 00 73 00 69 00 74 00 65 00 31 00 3d 00 } //00 00  /getdata/getdata.php?type1=c&site1=
		$a_00_5 = {5d 04 00 } //00 b6 
	condition:
		any of ($a_*)
 
}