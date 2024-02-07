
rule TrojanSpy_Win32_Nadebanker_G{
	meta:
		description = "TrojanSpy:Win32/Nadebanker.G,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b f8 47 81 ff ff ff ff 3f 7f 2a 8d 04 3f e8 90 01 02 00 00 8b f4 3b f3 74 1c 90 00 } //01 00 
		$a_01_1 = {46 00 41 00 43 00 45 00 42 00 4f 00 4f 00 4b 00 } //01 00  FACEBOOK
		$a_01_2 = {41 00 64 00 6f 00 62 00 65 00 5f 00 50 00 44 00 46 00 5f 00 52 00 65 00 61 00 64 00 65 00 72 00 5f 00 48 00 65 00 6c 00 70 00 65 00 72 00 } //01 00  Adobe_PDF_Reader_Helper
		$a_01_3 = {25 00 73 00 25 00 64 00 5f 00 77 00 65 00 73 00 74 00 70 00 61 00 63 00 5f 00 25 00 64 00 2e 00 6d 00 76 00 74 00 } //01 00  %s%d_westpac_%d.mvt
		$a_01_4 = {5f 00 69 00 66 00 72 00 6d 00 2e 00 68 00 74 00 6d 00 } //01 00  _ifrm.htm
		$a_01_5 = {6c 00 69 00 6e 00 6b 00 72 00 65 00 61 00 64 00 65 00 72 00 2e 00 4c 00 6e 00 6b 00 72 00 64 00 72 00 62 00 68 00 6f 00 } //01 00  linkreader.Lnkrdrbho
		$a_01_6 = {64 00 74 00 77 00 35 00 64 00 5c 00 } //00 00  dtw5d\
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_Win32_Nadebanker_G_2{
	meta:
		description = "TrojanSpy:Win32/Nadebanker.G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 69 6e 6b 72 65 61 64 65 72 2e 4c 69 6e 6b 72 65 61 64 65 72 62 68 6f } //01 00  linkreader.Linkreaderbho
		$a_00_1 = {6c 69 6e 6b 72 65 61 64 65 72 2e 64 6c 6c } //01 00  linkreader.dll
		$a_01_2 = {4e 6f 52 65 6d 6f 76 65 20 27 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 27 } //01 00  NoRemove 'Browser Helper Objects'
		$a_01_3 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 42 37 38 32 45 44 45 34 2d 43 43 42 33 2d 34 45 33 45 2d 39 38 31 46 2d 39 36 43 36 38 31 31 36 46 33 38 43 7d } //01 00  ForceRemove {B782EDE4-CCB3-4E3E-981F-96C68116F38C}
		$a_01_4 = {50 72 6f 67 49 44 20 3d 20 73 20 27 6c 69 6e 6b 72 65 61 64 65 72 2e 4c 69 6e 6b 72 65 61 64 65 72 62 68 6f 2e 31 27 } //01 00  ProgID = s 'linkreader.Linkreaderbho.1'
		$a_00_5 = {43 00 4c 00 53 00 49 00 44 00 5c 00 7b 00 46 00 32 00 46 00 34 00 43 00 36 00 43 00 31 00 2d 00 41 00 33 00 34 00 34 00 2d 00 34 00 39 00 37 00 39 00 2d 00 38 00 35 00 36 00 46 00 2d 00 35 00 33 00 32 00 45 00 32 00 32 00 38 00 35 00 39 00 30 00 38 00 33 00 7d 00 } //01 00  CLSID\{F2F4C6C1-A344-4979-856F-532E22859083}
		$a_00_6 = {41 00 64 00 6f 00 62 00 65 00 20 00 50 00 44 00 46 00 20 00 52 00 65 00 61 00 64 00 65 00 72 00 20 00 4c 00 69 00 6e 00 6b 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 } //00 00  Adobe PDF Reader Link Helper
	condition:
		any of ($a_*)
 
}