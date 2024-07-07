
rule Backdoor_BAT_Soblacod_A{
	meta:
		description = "Backdoor:BAT/Soblacod.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {63 61 6d 65 72 61 } //1 camera
		$a_01_1 = {67 66 78 53 63 72 65 65 6e 73 68 6f 74 } //1 gfxScreenshot
		$a_01_2 = {6c 61 73 74 4b 65 79 00 4c 6f 67 73 } //1 慬瑳敋y潌獧
		$a_01_3 = {45 78 78 70 65 72 00 57 52 4b } //1 硅灸牥圀䭒
		$a_01_4 = {7c 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 2d 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 7c 00 } //1 |Function - Disabled|
		$a_03_5 = {5c 00 74 00 74 00 6d 00 70 00 2e 00 70 00 6e 00 67 00 90 01 02 5b 00 30 00 5d 00 2a 00 90 01 02 5b 00 31 00 5d 00 2a 00 90 00 } //1
		$a_03_6 = {23 00 7c 00 20 00 5b 00 90 02 20 5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=5
 
}