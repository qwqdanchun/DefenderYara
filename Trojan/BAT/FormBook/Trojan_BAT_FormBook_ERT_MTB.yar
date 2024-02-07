
rule Trojan_BAT_FormBook_ERT_MTB{
	meta:
		description = "Trojan:BAT/FormBook.ERT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 66 36 64 39 36 62 35 39 2d 36 63 39 33 2d 34 31 63 31 2d 62 62 38 38 2d 65 31 37 63 32 65 65 61 66 33 62 38 } //01 00  $f6d96b59-6c93-41c1-bb88-e17c2eeaf3b8
		$a_01_1 = {53 00 74 00 72 00 69 00 6e 00 67 00 31 00 } //01 00  String1
		$a_01_2 = {00 49 52 46 57 30 31 00 42 31 00 } //01 00 
		$a_01_3 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //01 00  䘀潲䉭獡㙥匴牴湩g
		$a_01_4 = {00 41 63 63 6f 75 6e 74 44 6f 6d 61 69 6e 53 69 64 00 } //01 00  䄀捣畯瑮潄慭湩楓d
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 73 } //00 00  GetMethods
	condition:
		any of ($a_*)
 
}