
rule TrojanDownloader_Win32_Sinmis_A{
	meta:
		description = "TrojanDownloader:Win32/Sinmis.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 57 04 00 00 ff 15 90 01 02 40 00 68 90 01 03 00 e8 90 00 } //02 00 
		$a_01_1 = {68 20 4e 00 00 ff d5 83 c7 01 83 ff 03 7c b4 } //01 00 
		$a_01_2 = {2f 78 2f 6c 2e 70 68 70 } //01 00  /x/l.php
		$a_01_3 = {26 72 65 71 75 65 73 74 49 44 3d } //01 00  &requestID=
		$a_01_4 = {3f 69 64 3d 00 } //01 00 
		$a_01_5 = {26 6f 73 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}