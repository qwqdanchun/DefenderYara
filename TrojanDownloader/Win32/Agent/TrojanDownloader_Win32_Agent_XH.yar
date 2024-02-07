
rule TrojanDownloader_Win32_Agent_XH{
	meta:
		description = "TrojanDownloader:Win32/Agent.XH,SIGNATURE_TYPE_PEHSTR,17 00 15 00 1b 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 6c 00 6f 00 61 00 64 00 2e 00 76 00 62 00 70 00 } //01 00  sload.vbp
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 78 00 6c 00 6f 00 61 00 64 00 2e 00 63 00 6f 00 6d 00 } //01 00  http://sxload.com
		$a_01_2 = {78 00 6c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  xload.exe
		$a_01_3 = {63 00 6f 00 6e 00 73 00 74 00 2e 00 70 00 68 00 70 00 } //01 00  const.php
		$a_01_4 = {63 00 6f 00 6e 00 73 00 74 00 32 00 2e 00 70 00 68 00 70 00 } //01 00  const2.php
		$a_01_5 = {63 00 6f 00 6e 00 73 00 74 00 33 00 2e 00 70 00 68 00 70 00 } //01 00  const3.php
		$a_01_6 = {64 00 61 00 74 00 61 00 2e 00 70 00 68 00 70 00 } //01 00  data.php
		$a_01_7 = {73 00 65 00 61 00 72 00 63 00 68 00 2e 00 70 00 68 00 70 00 } //01 00  search.php
		$a_01_8 = {63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2e 00 70 00 68 00 70 00 } //01 00  control.php
		$a_01_9 = {73 00 78 00 6c 00 6f 00 61 00 64 00 2e 00 63 00 6f 00 6d 00 } //01 00  sxload.com
		$a_01_10 = {57 00 49 00 4e 00 44 00 49 00 52 00 } //01 00  WINDIR
		$a_01_11 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_12 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 5a 00 6f 00 6e 00 65 00 4d 00 61 00 70 00 5c 00 44 00 6f 00 6d 00 61 00 69 00 6e 00 73 00 5c 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\
		$a_01_13 = {61 00 62 00 6f 00 75 00 74 00 3a 00 62 00 6c 00 61 00 6e 00 6b 00 } //01 00  about:blank
		$a_01_14 = {3f 00 73 00 74 00 61 00 74 00 75 00 73 00 3d 00 6d 00 61 00 69 00 6e 00 } //01 00  ?status=main
		$a_01_15 = {3f 00 73 00 74 00 61 00 74 00 75 00 73 00 3d 00 63 00 6f 00 6e 00 73 00 74 00 } //01 00  ?status=const
		$a_01_16 = {3f 00 73 00 74 00 61 00 74 00 75 00 73 00 3d 00 73 00 65 00 61 00 72 00 63 00 68 00 } //01 00  ?status=search
		$a_01_17 = {3f 00 73 00 74 00 61 00 74 00 75 00 73 00 3d 00 69 00 6d 00 61 00 69 00 6e 00 } //01 00  ?status=imain
		$a_01_18 = {3f 00 73 00 74 00 61 00 74 00 75 00 73 00 3d 00 69 00 63 00 6f 00 6e 00 73 00 74 00 } //01 00  ?status=iconst
		$a_01_19 = {3f 00 73 00 74 00 61 00 74 00 75 00 73 00 3d 00 69 00 73 00 65 00 61 00 72 00 63 00 68 00 } //01 00  ?status=isearch
		$a_01_20 = {49 00 57 00 65 00 62 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 32 00 } //01 00  IWebBrowser2
		$a_01_21 = {3f 00 6c 00 61 00 6e 00 67 00 3d 00 } //01 00  ?lang=
		$a_01_22 = {2f 00 63 00 75 00 73 00 74 00 6f 00 6d 00 3f 00 2a 00 71 00 3d 00 26 00 } //01 00  /custom?*q=&
		$a_01_23 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00  Scripting.FileSystemObject
		$a_01_24 = {4d 00 53 00 58 00 4d 00 4c 00 32 00 2e 00 58 00 4d 00 4c 00 48 00 54 00 54 00 50 00 } //01 00  MSXML2.XMLHTTP
		$a_01_25 = {41 00 44 00 4f 00 44 00 42 00 2e 00 53 00 74 00 72 00 65 00 61 00 6d 00 } //01 00  ADODB.Stream
		$a_01_26 = {2e 00 57 00 65 00 62 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 } //00 00  .WebBrowser
	condition:
		any of ($a_*)
 
}