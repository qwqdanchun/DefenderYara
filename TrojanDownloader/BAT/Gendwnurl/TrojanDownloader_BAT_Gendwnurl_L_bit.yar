
rule TrojanDownloader_BAT_Gendwnurl_L_bit{
	meta:
		description = "TrojanDownloader:BAT/Gendwnurl.L!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {64 00 6f 00 63 00 73 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 63 00 3f 00 69 00 64 00 3d 00 90 02 3f 26 00 65 00 78 00 70 00 6f 00 72 00 74 00 3d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 00 } //01 00 
		$a_01_1 = {2f 00 69 00 73 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //01 00  /isss.php?id=
		$a_01_2 = {26 00 74 00 79 00 70 00 65 00 3d 00 61 00 64 00 64 00 6c 00 6f 00 67 00 26 00 74 00 65 00 78 00 74 00 3d 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 } //01 00  &type=addlog&text=started
		$a_01_3 = {74 00 61 00 73 00 6b 00 68 00 6f 00 73 00 74 00 65 00 78 00 } //00 00  taskhostex
	condition:
		any of ($a_*)
 
}