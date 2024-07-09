
rule TrojanDownloader_O97M_Obfuse_VIS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {46 6f 72 20 69 20 3d 20 31 20 54 6f 20 4c 65 6e 28 [0-72] 29 20 53 74 65 70 20 32 } //1
		$a_03_1 = {73 53 74 72 20 3d 20 73 53 74 72 20 2b 20 43 68 72 28 43 4c 6e 67 28 22 26 48 22 20 26 20 4d 69 64 28 [0-72] 2c 20 69 2c 20 32 29 29 20 2d 20 32 39 29 } //1
		$a_01_2 = {53 68 65 6c 6c 20 73 53 74 72 } //1 Shell sStr
		$a_01_3 = {50 72 69 76 61 74 65 20 53 75 62 20 61 73 64 61 73 28 29 } //1 Private Sub asdas()
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Obfuse_VIS_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 73 64 73 2e 68 74 61 } //1 c:\programdata\sds.hta
		$a_03_1 = {4f 70 65 6e 20 [0-0a] 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 0d 0a 50 72 69 6e 74 20 23 31 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 2c 20 22 [0-0a] 22 2c 20 22 22 29 0d 0a 43 6c 6f 73 65 20 23 31 } //1
		$a_01_2 = {53 68 65 6c 6c 23 28 22 63 6d 64 20 2f 63 20 22 20 26 } //1 Shell#("cmd /c " &
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_VIS_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 68 65 61 29 2e 65 78 65 63 28 70 6f 77 65 72 72 61 6e 67 65 20 26 20 22 68 65 6c 6c 20 2d 77 20 22 20 26 20 70 72 6f 74 65 69 20 26 20 } //1 shea).exec(powerrange & "hell -w " & protei & 
		$a_01_1 = {68 74 74 70 3a 2f 2f 33 31 2e 32 31 30 2e 32 30 2e 36 2f 77 32 2f 48 6f 78 6d 71 2e 65 78 22 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 33 34 29 } //1 http://31.210.20.6/w2/Hoxmq.ex" & Chr(101) & Chr(34)
		$a_03_2 = {26 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c [0-0f] 2e 65 78 22 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 33 34 29 20 26 20 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_VIS_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {52 75 6e 28 6a 4d 6b 55 4f 53 57 74 6f 66 4b 20 26 20 48 73 51 67 4f 4b 4d 4f 61 2c 20 30 2c 20 46 61 6c 73 65 29 } //1 Run(jMkUOSWtofK & HsQgOKMOa, 0, False)
		$a_01_1 = {74 65 68 7a 76 61 63 66 79 6e 6c 6b 20 26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 76 77 76 71 76 6c 61 6a 76 6d 78 73 2c 20 68 64 6a 73 6a 64 70 65 64 61 72 65 2c 20 32 29 29 29 } //1 tehzvacfynlk & Chr$(Val("&H" & Mid$(vwvqvlajvmxs, hdjsjdpedare, 2)))
		$a_01_2 = {22 2d 77 20 31 20 2d 43 20 22 22 73 76 20 78 57 20 2d 3b 73 76 20 50 72 5a 20 65 63 3b 73 76 20 64 79 53 20 28 28 67 76 20 78 57 29 2e 76 61 6c 75 65 2e 74 6f 53 74 72 69 6e 67 28 29 2b 28 67 76 20 50 72 5a 29 2e 76 61 6c 75 65 2e 74 6f 53 74 72 69 6e 67 28 29 29 } //1 "-w 1 -C ""sv xW -;sv PrZ ec;sv dyS ((gv xW).value.toString()+(gv PrZ).value.toString())
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_VIS_MTB_5{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {55 52 4c 20 3d 20 22 68 74 74 70 73 3a 2f 2f 6b 69 74 68 75 61 74 70 68 61 6e 6d 65 6d 2e 30 30 30 77 65 62 68 6f 73 74 61 70 70 2e 63 6f 6d 2f 63 68 61 72 65 2f 74 65 73 74 2e 7a 69 70 } //1 URL = "https://kithuatphanmem.000webhostapp.com/chare/test.zip
		$a_01_1 = {6f 53 68 65 6c 6c 2e 52 75 6e 20 22 63 6d 64 2e 65 78 65 20 2f 63 20 63 64 20 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 55 73 65 72 20 26 20 22 5c 44 6f 63 75 6d 65 6e 74 73 5c 54 65 73 74 5c 6e 65 63 6f 72 65 61 70 70 33 2e 31 20 26 26 20 43 6f 6f 6b 69 65 56 69 72 75 73 2e 65 78 65 22 2c 20 30 2c 20 54 72 75 65 } //1 oShell.Run "cmd.exe /c cd C:\Users\" & User & "\Documents\Test\necoreapp3.1 && CookieVirus.exe", 0, True
		$a_01_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 49 6e 6c 69 6e 65 53 68 61 70 65 73 2e 41 64 64 50 69 63 74 75 72 65 20 5f } //1 Application.ActiveDocument.InlineShapes.AddPicture _
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_VIS_MTB_6{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 20 53 79 6e 64 69 63 61 74 65 28 29 } //1 Call Syndicate()
		$a_01_1 = {38 33 29 2c 20 31 30 33 29 2c 20 36 36 29 2c 20 36 36 29 2c 20 36 35 29 2c 20 36 39 29 2c 20 37 33 29 2c 20 36 35 29 2c 20 31 30 31 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 36 36 29 2c 20 36 35 29 2c 20 36 39 29 2c 20 39 39 29 2c 20 36 35 29 2c 20 38 36 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 36 36 29 2c 20 36 35 29 2c 20 37 31 29 2c 20 37 37 29 2c 20 36 35 29 2c 20 38 35 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 36 36 29 2c 20 36 35 29 2c 20 37 31 } //1 83), 103), 66), 66), 65), 69), 73), 65), 101), 81), 66), 66), 65), 69), 99), 65), 86), 81), 66), 66), 65), 71), 77), 65), 85), 81), 66), 66), 65), 71
		$a_01_2 = {39 39 29 2c 20 36 35 29 2c 20 38 31 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 36 39 29 2c 20 36 35 29 2c 20 36 38 29 2c 20 36 35 29 2c 20 36 35 29 2c 20 38 31 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 37 34 29 2c 20 36 35 29 2c 20 36 39 29 2c 20 36 39 29 2c 20 36 35 29 2c 20 38 31 29 2c 20 31 30 33 29 2c 20 36 36 29 2c 20 31 30 35 29 2c 20 36 35 29 2c 20 36 39 29 2c 20 36 39 29 2c 20 36 35 29 2c 20 38 32 29 2c 20 31 30 33 29 2c 20 36 36 29 2c 20 37 38 29 } //1 99), 65), 81), 81), 66), 69), 65), 68), 65), 65), 81), 81), 66), 74), 65), 69), 69), 65), 81), 103), 66), 105), 65), 69), 69), 65), 82), 103), 66), 78)
		$a_01_3 = {36 35 29 2c 20 36 39 29 2c 20 36 39 29 2c 20 36 35 29 2c 20 39 30 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 38 32 29 2c 20 36 35 29 2c 20 36 39 29 2c 20 37 33 29 2c 20 36 35 29 2c 20 31 30 31 29 2c 20 31 30 33 29 2c 20 36 36 29 2c 20 36 36 29 2c 20 36 35 29 2c 20 36 39 29 2c 20 31 30 33 29 2c 20 36 35 29 2c 20 38 35 29 2c 20 38 31 29 2c 20 36 36 29 2c 20 36 36 29 2c 20 36 35 29 2c 20 37 30 29 2c 20 31 31 31 29 2c 20 36 35 29 2c 20 38 35 29 2c 20 38 31 29 } //1 65), 69), 69), 65), 90), 81), 66), 82), 65), 69), 73), 65), 101), 103), 66), 66), 65), 69), 103), 65), 85), 81), 66), 66), 65), 70), 111), 65), 85), 81)
		$a_01_4 = {52 65 44 69 6d 20 62 4f 75 74 28 28 28 28 55 42 6f 75 6e 64 28 62 49 6e 29 20 2b 20 31 29 20 5c 20 34 29 20 2a 20 33 29 20 2d 20 31 29 } //1 ReDim bOut((((UBound(bIn) + 1) \ 4) * 3) - 1)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}