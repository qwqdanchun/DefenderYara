
rule TrojanDownloader_Win32_Ejik_G{
	meta:
		description = "TrojanDownloader:Win32/Ejik.G,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 61 73 73 77 6f 72 64 90 01 1c 90 02 20 75 73 65 72 6e 61 6d 65 90 01 1c 90 02 20 50 61 73 73 77 6f 72 64 90 01 1c 90 02 20 55 73 65 72 6e 61 6d 65 90 00 } //01 00 
		$a_00_1 = {45 49 64 41 6c 72 65 61 64 79 52 65 67 69 73 74 65 72 65 64 41 75 74 68 65 6e 74 69 63 61 74 69 6f 6e 4d 65 74 68 6f 64 } //01 00  EIdAlreadyRegisteredAuthenticationMethod
		$a_00_2 = {72 65 63 76 66 72 6f 6d } //01 00  recvfrom
		$a_00_3 = {67 65 74 73 6f 63 6b 6e 61 6d 65 } //01 00  getsockname
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_5 = {72 65 61 6c 6d } //01 00  realm
		$a_01_6 = {45 58 45 46 49 4c 45 } //01 00  EXEFILE
		$a_01_7 = {52 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 } //01 00  Regsvr32.exe /s 
		$a_01_8 = {5b 73 65 74 74 69 6e 67 73 5d } //01 00  [settings]
		$a_01_9 = {75 73 65 72 6e 61 6d 65 3d } //01 00  username=
		$a_01_10 = {76 65 72 3d } //01 00  ver=
		$a_01_11 = {77 69 6e 64 6f 77 6e 65 77 73 75 70 73 2e 69 6e 69 } //00 00  windownewsups.ini
	condition:
		any of ($a_*)
 
}