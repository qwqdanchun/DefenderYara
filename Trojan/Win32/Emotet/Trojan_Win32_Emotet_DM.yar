
rule Trojan_Win32_Emotet_DM{
	meta:
		description = "Trojan:Win32/Emotet.DM,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 65 00 67 00 65 00 6e 00 64 00 55 00 73 00 69 00 6e 00 67 00 61 00 70 00 70 00 6c 00 65 00 73 00 68 00 } //01 00  legendUsingapplesh
		$a_01_1 = {65 00 72 00 72 00 6f 00 72 00 37 00 38 00 74 00 68 00 72 00 6f 00 75 00 67 00 68 00 6f 00 75 00 74 00 28 00 73 00 69 00 6d 00 69 00 6c 00 61 00 72 00 6c 00 6f 00 67 00 73 00 } //01 00  error78throughout(similarlogs
		$a_01_2 = {57 00 79 00 6f 00 75 00 72 00 73 00 63 00 61 00 6e 00 6e 00 65 00 64 00 49 00 44 00 6c 00 54 00 43 00 6f 00 65 00 79 00 } //01 00  WyourscannedIDlTCoey
		$a_01_3 = {55 00 74 00 68 00 65 00 34 00 32 00 43 00 36 00 36 00 36 00 36 00 36 00 36 00 61 00 74 00 74 00 65 00 6d 00 70 00 74 00 63 00 61 00 6e 00 61 00 64 00 61 00 72 00 } //01 00  Uthe42C666666attemptcanadar
		$a_01_4 = {53 00 69 00 53 00 42 00 61 00 73 00 65 00 2e 00 64 00 6c 00 6c 00 } //00 00  SiSBase.dll
		$a_00_5 = {5d 04 00 } //00 94 
	condition:
		any of ($a_*)
 
}