
rule TrojanDownloader_Win32_Lepasud_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Lepasud.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 3e 33 d2 59 f7 f1 46 83 fe 0a 8a 82 90 01 04 88 86 90 01 04 7c 90 00 } //01 00 
		$a_01_1 = {25 73 3f 6d 61 63 3d 25 73 26 76 65 72 3d } //01 00  %s?mac=%s&ver=
		$a_01_2 = {6c 70 6b 2e 64 6c 6c 00 00 00 00 25 73 5c 25 73 } //01 00 
		$a_01_3 = {6d 66 78 69 78 75 65 2e 69 6e 69 00 00 00 00 25 73 5c 25 64 2e 65 78 65 } //01 00 
		$a_01_4 = {63 70 64 73 64 61 73 64 6c 75 73 00 } //00 00  灣獤慤摳畬s
	condition:
		any of ($a_*)
 
}