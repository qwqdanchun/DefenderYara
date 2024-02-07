
rule TrojanDownloader_Win32_Dluca_BF{
	meta:
		description = "TrojanDownloader:Win32/Dluca.BF,SIGNATURE_TYPE_PEHSTR,18 00 16 00 1b 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 70 77 68 65 65 6c } //01 00  Apwheel
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 49 6e 74 65 72 6e 61 74 69 6f 6e 61 6c } //01 00  Control Panel\International
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //01 00  SOFTWARE\Microsoft\Internet Explorer
		$a_01_4 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  \drivers\etc\hosts
		$a_01_5 = {2f 6f 6b 2e 74 78 74 } //01 00  /ok.txt
		$a_01_6 = {26 68 66 3d } //01 00  &hf=
		$a_01_7 = {26 61 66 66 69 64 3d } //01 00  &affid=
		$a_01_8 = {26 63 63 3d } //01 00  &cc=
		$a_01_9 = {43 53 34 4e 33 61 36 74 69 6f 6e 53 43 6f 64 65 } //01 00  CS4N3a6tionSCode
		$a_01_10 = {53 6f 66 74 77 61 72 65 5c 43 65 72 65 73 } //01 00  Software\Ceres
		$a_01_11 = {26 69 73 3d 30 } //01 00  &is=0
		$a_01_12 = {26 69 73 3d 31 } //01 00  &is=1
		$a_01_13 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 30 30 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{00
		$a_01_14 = {26 68 63 32 3d } //01 00  &hc2=
		$a_01_15 = {26 68 63 31 3d } //01 00  &hc1=
		$a_01_16 = {2f 62 68 6f 2f 72 65 70 6f 72 74 2e 61 73 70 3f 67 3d } //01 00  /bho/report.asp?g=
		$a_01_17 = {53 6f 66 74 77 61 72 65 5c 63 6f 6d 6d 6f 6b } //01 00  Software\commok
		$a_01_18 = {2e 61 62 65 74 74 65 72 69 6e 74 65 72 6e 65 74 2e 63 6f 6d } //01 00  .abetterinternet.com
		$a_01_19 = {78 70 6c 6f 72 65 32 5f 65 78 65 } //01 00  xplore2_exe
		$a_01_20 = {43 48 41 4e 47 45 53 45 52 56 45 52 } //01 00  CHANGESERVER
		$a_01_21 = {50 4f 50 55 50 } //01 00  POPUP
		$a_01_22 = {53 48 4f 52 54 43 55 54 } //01 00  SHORTCUT
		$a_01_23 = {63 6f 6e 66 69 67 2e 74 78 74 } //01 00  config.txt
		$a_01_24 = {26 72 69 3d 31 } //01 00  &ri=1
		$a_01_25 = {63 6f 6e 66 69 67 70 61 74 68 } //01 00  configpath
		$a_01_26 = {62 68 6f 2f 63 6f 6e 66 69 67 2e 61 73 70 3f 67 3d } //00 00  bho/config.asp?g=
	condition:
		any of ($a_*)
 
}