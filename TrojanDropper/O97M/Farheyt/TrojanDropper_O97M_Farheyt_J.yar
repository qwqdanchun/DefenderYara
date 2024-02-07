
rule TrojanDropper_O97M_Farheyt_J{
	meta:
		description = "TrojanDropper:O97M/Farheyt.J,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 2d 31 37 20 2b 20 31 36 } //01 00  = -17 + 16
		$a_02_1 = {20 26 20 22 72 74 22 20 26 20 90 02 10 28 39 39 20 2b 20 33 29 90 00 } //01 00 
		$a_00_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 6f 72 22 20 26 20 22 64 2e 22 20 26 20 22 41 70 70 6c 69 63 61 74 69 6f 22 20 26 } //01 00  = CreateObject("Wor" & "d." & "Applicatio" &
		$a_00_3 = {3d 20 22 54 22 20 26 20 22 45 4d 22 } //01 00  = "T" & "EM"
		$a_00_4 = {26 20 22 22 20 26 20 22 71 32 22 20 26 } //00 00  & "" & "q2" &
	condition:
		any of ($a_*)
 
}