
rule TrojanDownloader_O97M_Qakbot_DOLT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.DOLT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 67 64 67 65 72 77 72 68 20 3d 20 22 68 22 20 26 20 22 74 22 20 26 20 22 74 22 20 26 20 22 70 22 20 26 20 22 3a 22 20 26 20 22 2f 22 20 26 20 22 2f 22 } //1 dgdgerwrh = "h" & "t" & "t" & "p" & ":" & "/" & "/"
		$a_01_1 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 48 32 34 22 29 20 3d 20 64 67 64 67 65 72 77 72 68 20 26 20 22 31 39 30 2e 31 34 2e 33 37 2e 32 34 37 } //1 Sheets("Fikop").Range("H24") = dgdgerwrh & "190.14.37.247
		$a_01_2 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 48 32 35 22 29 20 3d 20 64 67 64 67 65 72 77 72 68 20 26 20 22 35 31 2e 38 39 2e 31 31 35 2e 31 31 33 } //1 Sheets("Fikop").Range("H25") = dgdgerwrh & "51.89.115.113
		$a_01_3 = {2e 49 6e 74 65 72 69 6f 72 2e 43 6f 6c 6f 72 20 3d 20 76 62 42 6c 61 63 6b } //1 .Interior.Color = vbBlack
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}