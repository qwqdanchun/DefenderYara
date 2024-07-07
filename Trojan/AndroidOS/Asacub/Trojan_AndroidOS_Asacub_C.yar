
rule Trojan_AndroidOS_Asacub_C{
	meta:
		description = "Trojan:AndroidOS/Asacub.C,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {39 05 03 00 0e 00 71 00 90 01 02 00 00 0a 00 12 01 38 00 90 01 02 71 10 90 01 02 05 00 0c 00 71 20 90 01 02 04 00 0a 00 38 00 90 01 02 6a 01 90 01 02 63 00 90 01 02 38 00 90 01 02 63 00 90 01 02 38 00 90 01 02 63 00 90 01 02 39 00 48 00 63 00 90 01 02 38 00 44 00 71 10 90 01 02 05 00 0c 00 71 20 90 01 02 04 00 0c 00 71 10 90 01 02 00 00 0a 02 3d 02 90 01 02 71 10 90 01 02 00 00 0a 02 38 90 01 02 00 71 10 90 01 02 05 00 0c 02 38 02 90 01 02 62 03 90 01 02 71 30 90 01 02 34 02 0a 03 39 03 90 01 02 62 03 90 01 02 71 30 90 01 02 34 02 0a 03 39 03 90 01 02 62 03 90 01 02 71 30 90 01 02 34 02 0a 02 38 02 03 00 12 11 39 01 06 00 71 10 90 01 02 00 00 0a 01 38 01 90 01 02 12 21 71 20 90 01 02 14 00 71 30 90 01 02 54 00 90 00 } //3
		$a_03_1 = {39 09 03 00 0e 00 12 04 13 06 0f 00 12 07 71 30 90 01 02 76 04 0c 00 1f 00 90 01 02 6e 10 90 01 02 00 00 0a 00 12 01 38 00 2b 00 12 14 23 44 90 01 02 12 06 4d 09 04 06 13 06 10 00 12 07 71 30 90 01 02 76 04 0c 00 1f 00 90 01 02 12 24 23 44 90 01 02 12 06 4d 08 04 06 12 16 4d 00 04 06 13 06 11 00 12 07 71 30 90 01 02 76 04 0c 00 1f 00 90 01 02 6e 10 90 01 02 00 00 0a 00 38 00 04 00 6a 01 90 01 02 63 00 90 01 02 38 00 ff 00 63 00 90 01 02 38 00 fb 00 63 00 90 01 02 39 00 f7 00 63 00 90 01 02 38 00 f3 00 12 14 23 44 90 01 02 12 06 4d 09 04 06 13 06 12 00 12 07 71 30 90 01 02 76 04 0c 00 1f 00 90 01 02 12 24 23 44 90 01 02 12 06 4d 08 04 06 12 16 4d 00 04 06 13 06 13 00 12 07 71 30 90 01 02 76 04 0c 00 1f 00 90 01 02 12 14 23 44 90 01 02 12 06 4d 00 04 90 00 } //3
		$a_03_2 = {00 00 0a 00 12 01 38 00 0e 00 6e 10 90 01 02 05 00 0c 00 70 20 90 01 02 04 00 0a 00 38 00 04 00 6a 01 90 01 02 63 00 90 01 02 38 00 50 00 63 00 90 01 02 38 00 4c 00 63 00 90 01 02 39 00 48 00 63 00 90 01 02 38 00 44 00 6e 10 90 01 02 05 00 0c 00 70 20 90 01 02 04 00 0c 00 6e 10 90 01 02 00 00 0a 02 3d 02 33 00 71 10 90 01 02 00 00 0a 02 38 02 21 00 6e 10 90 01 02 05 00 0c 02 38 02 1b 00 62 03 90 01 02 70 30 90 01 02 34 02 0a 03 39 03 12 00 62 03 90 01 02 70 30 90 01 02 34 02 0a 03 39 03 0a 00 62 03 90 01 02 70 30 90 01 02 34 02 0a 02 38 02 03 00 12 11 39 01 06 00 71 10 90 01 02 00 00 0a 01 38 01 06 00 12 21 6e 20 90 01 02 14 00 70 30 90 01 02 54 00 90 00 } //3
		$a_03_3 = {05 00 0c 02 90 05 0a 01 00 38 02 90 01 02 90 05 0a 01 00 62 03 90 01 02 90 05 0a 01 00 70 30 90 01 02 34 02 0a 03 90 05 0a 01 00 39 03 90 01 02 90 05 0a 01 00 62 03 90 01 02 90 05 0a 01 00 70 30 90 01 02 34 02 0a 03 90 05 0a 01 00 39 03 90 01 02 90 05 0a 01 00 62 03 90 01 02 90 05 0a 01 00 70 30 90 01 02 34 02 0a 02 90 05 0a 01 00 38 02 90 01 02 90 05 0a 01 00 12 11 90 05 0a 01 00 39 01 90 01 02 90 05 0a 01 00 71 10 90 01 02 00 00 0a 01 90 05 0a 01 00 38 01 90 01 02 90 05 0a 01 00 12 21 90 05 0a 01 00 6e 20 90 01 02 14 00 90 05 0a 01 00 70 30 90 01 02 54 00 90 00 } //3
		$a_01_4 = {65 6e 61 62 6c 65 64 5f 61 63 63 65 73 73 69 62 69 6c 69 74 79 5f 73 65 72 76 69 63 65 73 } //1 enabled_accessibility_services
		$a_01_5 = {67 65 74 44 65 66 61 75 6c 74 53 6d 73 } //1 getDefaultSms
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_03_2  & 1)*3+(#a_03_3  & 1)*3+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}