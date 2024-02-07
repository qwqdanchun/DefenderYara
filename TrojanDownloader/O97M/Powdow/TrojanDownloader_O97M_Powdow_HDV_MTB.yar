
rule TrojanDownloader_O97M_Powdow_HDV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.HDV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 41 52 36 33 20 3d 20 22 68 74 74 70 73 3a 2f 2f 6c 61 6b 61 6d 6d 65 73 2e 78 79 7a 2f 68 64 63 64 72 69 76 65 34 2e 65 78 65 22 } //01 00  VAR63 = "https://lakammes.xyz/hdcdrive4.exe"
		$a_01_1 = {56 41 52 36 35 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 74 6d 70 22 29 20 26 20 22 5c 22 20 26 20 22 68 64 63 64 72 69 76 65 34 2e 65 78 65 22 } //01 00  VAR65 = Environ$("tmp") & "\" & "hdcdrive4.exe"
		$a_01_2 = {49 66 20 43 72 65 61 74 65 50 72 6f 63 65 73 73 28 56 41 52 36 35 2c 20 22 22 2c 20 30 26 2c 20 30 26 2c 20 31 26 2c 20 30 26 2c 20 30 26 2c 20 22 43 3a 5c 22 2c 20 73 69 2c 20 70 69 29 20 3d 20 30 20 54 68 65 6e 20 43 61 6c 6c 20 45 72 72 2e 52 61 69 73 65 28 35 31 37 2c 20 2c } //01 00  If CreateProcess(VAR65, "", 0&, 0&, 1&, 0&, 0&, "C:\", si, pi) = 0 Then Call Err.Raise(517, ,
		$a_01_3 = {49 66 20 4c 65 66 74 24 28 56 41 52 31 30 37 2c 20 49 6e 53 74 72 28 56 41 52 31 30 37 2c 20 43 68 72 24 28 30 29 29 29 20 3c 3e 20 32 30 30 20 54 68 65 6e } //01 00  If Left$(VAR107, InStr(VAR107, Chr$(0))) <> 200 Then
		$a_01_4 = {49 66 20 56 41 52 36 36 28 56 41 52 36 33 2c 20 56 41 52 36 32 29 20 54 68 65 6e } //00 00  If VAR66(VAR63, VAR62) Then
	condition:
		any of ($a_*)
 
}