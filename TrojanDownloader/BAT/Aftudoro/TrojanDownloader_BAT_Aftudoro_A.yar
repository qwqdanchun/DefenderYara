
rule TrojanDownloader_BAT_Aftudoro_A{
	meta:
		description = "TrojanDownloader:BAT/Aftudoro.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffb0 00 ffffffaf 00 0d 00 00 64 00 "
		
	strings :
		$a_01_0 = {5c 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 63 00 6f 00 6d 00 } //1e 00  \winlogon.com
		$a_01_1 = {2e 00 63 00 6f 00 6d 00 2f 00 77 00 70 00 2d 00 61 00 64 00 6d 00 69 00 6e 00 2f 00 69 00 6d 00 61 00 67 00 65 00 73 00 2f 00 25 00 32 00 30 00 2f 00 6c 00 6f 00 61 00 64 00 2e 00 63 00 6f 00 6d 00 } //1e 00  .com/wp-admin/images/%20/load.com
		$a_01_2 = {2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //28 00  .com/load.exe
		$a_01_3 = {4c 49 4d 41 5c 44 65 73 6b 74 6f 70 5c 31 5c 41 70 70 6c 69 63 61 74 69 6f 6e 31 2e 30 5c } //05 00  LIMA\Desktop\1\Application1.0\
		$a_01_4 = {44 6f 77 6e 41 70 70 5c 44 6f 77 6e 41 70 70 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c } //05 00  DownApp\DownApp\obj\x86\Release\
		$a_01_5 = {42 61 69 78 61 61 69 5c 42 61 69 78 61 61 69 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c } //05 00  Baixaai\Baixaai\obj\x86\Release\
		$a_01_6 = {55 70 64 61 74 65 44 6f 77 6e 6c 6f 61 64 5c 55 70 64 61 74 65 44 6f 77 6e 6c 6f 61 64 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 } //05 00  UpdateDownload\UpdateDownload\obj\x86\Release
		$a_01_7 = {74 00 72 00 61 00 6d 00 70 00 6f 00 73 00 75 00 73 00 73 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //05 00  tramposussa.com/load.exe
		$a_01_8 = {24 65 33 38 37 62 39 30 34 2d 32 36 36 31 2d 34 32 64 62 2d 38 63 38 65 2d 32 62 37 30 39 36 65 64 37 34 35 31 } //05 00  $e387b904-2661-42db-8c8e-2b7096ed7451
		$a_01_9 = {34 35 30 37 2d 35 36 37 38 2d 32 65 61 61 63 34 38 66 30 63 33 61 } //01 00  4507-5678-2eaac48f0c3a
		$a_01_10 = {55 70 64 61 74 65 47 6f 6f 67 6c 65 2e 70 64 62 } //01 00  UpdateGoogle.pdb
		$a_01_11 = {44 6f 77 6e 41 70 70 2e 70 64 62 } //01 00  DownApp.pdb
		$a_01_12 = {57 69 6e 61 6d 70 5f 4d 6f 64 65 2e 70 64 62 } //00 00  Winamp_Mode.pdb
		$a_00_13 = {5d 04 00 00 e2 d0 02 80 5c 21 00 } //00 e3 
	condition:
		any of ($a_*)
 
}