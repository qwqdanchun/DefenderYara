
rule TrojanDownloader_O97M_Obfuse_JA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 42 79 4e 61 6d 65 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 53 22 20 26 20 43 68 72 69 20 26 20 22 52 69 70 74 2e 53 68 65 22 20 26 20 4a 61 29 2c 20 22 52 75 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 52 69 67 68 74 28 52 69 67 68 74 28 22 57 68 69 74 65 47 75 6e 50 6f 77 65 72 22 2c 20 38 29 2c 20 52 75 6c 65 29 20 26 20 22 73 48 65 22 20 26 20 4a 61 20 26 20 22 20 77 53 22 20 26 20 43 68 72 69 20 26 20 22 52 69 70 54 20 20 20 20 20 20 20 20 20 20 20 22 20 26 20 47 72 6f 75 6e 64 4f 6e 2c 20 30 } //01 00  CallByName CreateObject("wS" & Chri & "Ript.She" & Ja), "Run", VbMethod, Right(Right("WhiteGunPower", 8), Rule) & "sHe" & Ja & " wS" & Chri & "RipT           " & GroundOn, 0
		$a_01_1 = {26 20 22 5c 73 74 61 74 69 5f 73 74 69 63 2e 69 6e 66 3a 63 6f 6d 31 22 } //01 00  & "\stati_stic.inf:com1"
		$a_01_2 = {3d 20 22 22 20 26 20 22 2f 22 20 26 20 22 22 20 26 20 22 65 22 20 26 20 22 3a 6a 53 22 20 26 20 43 68 72 69 20 26 20 22 52 22 20 26 20 22 49 70 54 20 22 20 26 20 43 68 72 28 33 36 20 2d 20 50 72 69 63 65 29 20 26 } //00 00  = "" & "/" & "" & "e" & ":jS" & Chri & "R" & "IpT " & Chr(36 - Price) &
	condition:
		any of ($a_*)
 
}