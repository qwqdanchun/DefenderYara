
rule TrojanDropper_O97M_Hancitor_JAR_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JAR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 74 61 74 69 63 2e 64 22 20 26 20 22 6c 22 20 26 20 22 6c } //1 Static.d" & "l" & "l
		$a_01_1 = {26 20 6a 73 64 20 26 } //1 & jsd &
		$a_01_2 = {43 61 6c 6c 20 6e 6d 28 6f 6c 6f 6c 6f 77 29 } //1 Call nm(ololow)
		$a_01_3 = {43 61 6c 6c 20 72 6e 65 65 28 75 75 75 2c 20 61 61 61 61 29 } //1 Call rnee(uuu, aaaa)
		$a_01_4 = {53 75 62 20 6a 6f 70 28 75 75 75 20 41 73 20 53 74 72 69 6e 67 2c 20 61 61 61 61 20 41 73 20 53 74 72 69 6e 67 29 } //1 Sub jop(uuu As String, aaaa As String)
		$a_01_5 = {2e 70 75 6d 70 6c 22 29 20 3d 20 22 22 20 54 68 65 6e } //1 .pumpl") = "" Then
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}