
rule Trojan_BAT_Samas_C{
	meta:
		description = "Trojan:BAT/Samas.C,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {24 33 64 63 66 38 65 34 31 2d 39 39 65 37 2d 34 31 36 37 2d 61 38 66 37 2d 31 62 38 39 66 33 66 35 35 63 62 34 } //02 00  $3dcf8e41-99e7-4167-a8f7-1b89f3f55cb4
		$a_00_1 = {5c 52 65 6c 65 61 73 65 5c 64 69 6c 69 74 6f 2e 70 64 62 } //02 00  \Release\dilito.pdb
		$a_03_2 = {5c 53 41 4d 5c 4f 72 69 67 69 6e 61 6c 5c 64 65 6c 66 69 6c 65 74 79 70 65 5c 64 65 6c 66 69 6c 65 74 79 70 65 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 90 02 0f 2e 70 64 62 90 00 } //01 00 
		$a_00_3 = {63 68 65 65 65 65 6b 6b 6b 6b 6b 6b 69 66 66 66 66 66 61 70 72 6f 63 63 63 63 65 65 65 65 5f 69 73 5f 6f 70 6e 6e 6e 6e 6e 6e 6e 00 } //01 00  档敥敥歫歫歫晩晦晦灡潲捣捣敥敥楟彳灯湮湮湮n
		$a_00_4 = {3c 66 69 6e 64 64 64 64 64 5f 72 65 63 75 72 73 73 73 73 73 5f 66 69 6c 65 73 73 73 73 73 73 73 5f 69 6e 5f 64 72 72 72 72 72 72 72 69 76 76 76 76 76 76 76 65 73 73 73 3e } //01 00  <finddddd_recursssss_filesssssss_in_drrrrrrrivvvvvvvesss>
		$a_00_5 = {5c 00 55 00 70 00 67 00 72 00 61 00 64 00 65 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //00 00  \UpgradeWindows
		$a_00_6 = {5d 04 00 00 } //11 7c 
	condition:
		any of ($a_*)
 
}