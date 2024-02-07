
rule TrojanDownloader_Win32_Discper_A{
	meta:
		description = "TrojanDownloader:Win32/Discper.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {25 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 25 00 } //01 00  %appdata%
		$a_00_1 = {25 00 54 00 45 00 4d 00 50 00 25 00 5c 00 } //01 00  %TEMP%\
		$a_00_2 = {2e 00 65 00 78 00 65 00 } //01 00  .exe
		$a_00_3 = {6f 00 70 00 65 00 6e 00 } //01 00  open
		$a_00_4 = {25 00 73 00 25 00 78 00 25 00 78 00 25 00 78 00 25 00 78 00 25 00 73 00 } //01 00  %s%x%x%x%x%s
		$a_00_5 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //04 00  Internet Explorer
		$a_01_6 = {33 45 d8 83 f7 7b 50 57 8d } //00 00 
		$a_00_7 = {5d 04 00 00 13 3b 03 80 } //5c 21 
	condition:
		any of ($a_*)
 
}