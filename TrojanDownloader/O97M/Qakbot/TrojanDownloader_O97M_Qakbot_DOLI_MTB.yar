
rule TrojanDownloader_O97M_Qakbot_DOLI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.DOLI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {42 79 74 72 75 79 20 3d 20 22 52 22 20 26 20 22 45 22 20 26 20 22 47 22 20 26 20 22 49 22 20 26 20 22 53 54 45 52 } //1 Bytruy = "R" & "E" & "G" & "I" & "STER
		$a_01_1 = {61 67 61 64 66 67 20 3d 20 22 20 2d 73 22 20 26 20 22 69 6c 22 20 26 20 22 65 6e 22 20 26 20 22 74 } //1 agadfg = " -s" & "il" & "en" & "t
		$a_01_2 = {64 66 64 73 61 66 20 3d 20 22 20 2e 2e 22 20 26 20 22 5c 43 22 20 26 20 22 65 6c 22 20 26 20 22 6f 64 22 20 26 20 22 2e 77 22 20 26 20 22 61 63 } //1 dfdsaf = " .." & "\C" & "el" & "od" & ".w" & "ac
		$a_01_3 = {49 39 2c 49 31 30 26 4a 31 30 2c 49 31 31 2c 49 31 32 2c 2c 31 2c 39 } //1 I9,I10&J10,I11,I12,,1,9
		$a_01_4 = {3d 20 22 2e 64 22 20 26 20 22 61 22 20 26 20 22 74 } //1 = ".d" & "a" & "t
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}