
rule TrojanDropper_O97M_Obfuse_PH_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.PH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {26 20 22 5c 76 61 6c 75 65 2e 22 20 26 20 45 6d 70 74 79 20 26 20 22 6a 22 20 26 20 22 22 20 26 20 22 73 65 22 } //1 & "\value." & Empty & "j" & "" & "se"
		$a_01_1 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 54 65 78 74 } //1 ActiveDocument.Content.Text
		$a_01_2 = {22 2d 63 6f 22 20 26 20 22 6d 6d 61 22 20 26 20 22 22 20 26 20 22 6e 64 20 22 22 47 65 74 2d 48 65 6c 70 22 20 26 } //1 "-co" & "mma" & "" & "nd ""Get-Help" &
		$a_03_3 = {56 42 41 2e 43 61 6c 6c 42 79 4e 61 6d 65 20 56 42 41 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-12] 20 26 20 22 2e 22 20 26 20 22 22 20 26 20 22 41 70 70 22 20 26 20 22 22 20 26 20 22 6c 69 63 61 22 20 26 20 22 22 20 26 20 22 74 69 6f 6e 22 29 2c 20 5f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}