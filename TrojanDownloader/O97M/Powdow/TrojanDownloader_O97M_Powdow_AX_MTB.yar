
rule TrojanDownloader_O97M_Powdow_AX_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.AX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //01 00  CreateObject("WScript.Shell")
		$a_01_1 = {53 68 65 6c 6c 20 28 45 6e 76 69 72 6f 6e 28 22 54 65 6d 70 22 29 20 2b 20 22 5c 65 57 54 50 4a 2e 62 61 74 22 29 } //01 00  Shell (Environ("Temp") + "\eWTPJ.bat")
		$a_00_2 = {77 77 71 73 73 2e 52 75 6e } //01 00  wwqss.Run
		$a_00_3 = {73 53 74 72 20 2b 20 43 68 72 28 43 4c 6e 67 28 22 26 48 22 20 26 20 4d 69 64 28 73 74 72 2c 20 69 2c 20 32 29 29 20 2d 20 39 29 } //01 00  sStr + Chr(CLng("&H" & Mid(str, i, 2)) - 9)
		$a_00_4 = {36 43 37 36 36 44 32 39 33 38 36 43 32 39 37 43 37 44 36 41 37 42 37 44 32 39 37 39 36 37 37 38 38 30 36 45 37 42 37 43 37 31 36 37 36 45 37 35 36 37 37 35 32 39 33 36 38 30 32 39 33 41 32 39 33 31 35 37 36 45 } //00 00  6C766D29386C297C7D6A7B7D29796778806E7B7C71676E756775293680293A2931576E
	condition:
		any of ($a_*)
 
}