
rule Trojan_AndroidOS_Asacub_D{
	meta:
		description = "Trojan:AndroidOS/Asacub.D,SIGNATURE_TYPE_DEXHSTR_EXT,07 00 07 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {05 00 0c 00 90 05 0a 01 00 71 20 90 01 02 04 00 0a 00 90 05 0a 01 00 38 00 90 01 02 90 05 0a 01 00 6a 01 90 01 02 90 05 0a 01 00 63 00 90 01 02 90 05 0a 01 00 38 00 90 01 02 90 05 0a 01 00 63 00 90 01 02 90 05 0a 01 00 38 00 90 01 02 90 05 0a 01 00 63 00 90 01 02 90 05 0a 01 00 39 00 90 01 02 90 05 0a 01 00 63 00 90 01 02 90 05 0a 01 00 38 00 90 01 02 90 05 0a 01 00 71 10 90 01 02 05 00 0c 00 90 05 0a 01 00 71 20 90 01 02 04 00 0c 00 90 05 0a 01 00 71 10 90 01 02 00 00 0a 02 90 05 0a 01 00 3d 02 90 01 02 90 05 0a 01 00 71 10 90 01 02 00 00 0a 02 90 05 0a 01 00 38 02 90 01 02 90 05 0a 01 00 71 10 90 00 } //03 00 
		$a_03_1 = {05 00 0c 02 90 05 0a 01 00 38 02 90 01 02 90 05 0a 01 00 62 03 90 01 02 90 05 0a 01 00 71 30 90 01 02 34 02 0a 03 90 05 0a 01 00 39 03 90 01 02 90 05 0a 01 00 62 03 90 01 02 90 05 0a 01 00 71 30 90 01 02 34 02 0a 03 90 05 0a 01 00 39 03 90 01 02 90 05 0a 01 00 62 03 90 01 02 90 05 0a 01 00 71 30 90 01 02 34 02 0a 02 90 05 0a 01 00 38 02 90 01 02 90 05 0a 01 00 12 11 90 05 0a 01 00 39 01 90 01 02 90 05 0a 01 00 71 10 90 01 02 00 00 0a 01 90 05 0a 01 00 38 01 90 01 02 90 05 0a 01 00 12 21 90 05 0a 01 00 71 20 90 01 02 14 00 90 05 0a 01 00 71 30 90 01 02 54 00 90 00 } //01 00 
		$a_01_2 = {65 6e 61 62 6c 65 64 5f 61 63 63 65 73 73 69 62 69 6c 69 74 79 5f 73 65 72 76 69 63 65 73 } //01 00  enabled_accessibility_services
		$a_01_3 = {67 65 74 44 65 66 61 75 6c 74 53 6d 73 } //00 00  getDefaultSms
		$a_00_4 = {5d 04 00 00 43 a4 } //04 80 
	condition:
		any of ($a_*)
 
}