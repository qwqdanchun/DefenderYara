
rule TrojanDropper_O97M_Hancitor_IAP_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.IAP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 74 22 20 26 20 22 6d 22 20 26 20 22 70 22 20 41 73 20 57 6f 72 64 2e 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 20 26 20 22 5c 22 20 26 20 22 57 30 22 20 26 20 22 72 64 2e 64 22 20 26 20 22 6c 22 20 26 20 22 6c 22 } //01 00  .t" & "m" & "p" As Word.ActiveDocument.AttachedTemplate.Path & "\" & "W0" & "rd.d" & "l" & "l"
		$a_01_1 = {53 75 62 20 6a 6f 70 28 75 75 75 20 41 73 20 53 74 72 69 6e 67 2c 20 61 61 61 61 20 41 73 20 53 74 72 69 6e 67 29 } //01 00  Sub jop(uuu As String, aaaa As String)
		$a_01_2 = {43 61 6c 6c 20 72 6e 65 65 28 75 75 75 2c 20 61 61 61 61 29 } //01 00  Call rnee(uuu, aaaa)
		$a_01_3 = {53 75 62 20 63 68 65 63 6b 74 68 65 28 73 66 20 41 73 20 53 74 72 69 6e 67 29 } //01 00  Sub checkthe(sf As String)
		$a_01_4 = {26 20 6a 73 64 20 26 } //00 00  & jsd &
	condition:
		any of ($a_*)
 
}