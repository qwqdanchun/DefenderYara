
rule TrojanDownloader_O97M_Obfuse_RS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 74 73 28 22 90 02 15 2f 90 02 03 2f 90 02 03 2f 90 02 05 3b 71 75 75 69 28 29 66 6d 6a 47 65 62 70 6d 6f 78 70 45 2f 2a 75 6f 66 6a 6d 44 63 66 58 2f 75 66 4f 21 75 64 66 6b 63 50 2e 78 66 4f 29 23 23 21 65 6f 62 6e 6e 70 44 2e 21 6d 6d 66 69 74 73 66 78 70 71 22 29 20 27 20 52 90 00 } //1
		$a_03_1 = {3d 20 74 73 28 22 90 02 05 21 55 30 21 5a 21 45 30 21 4f 30 21 5a 21 44 30 21 66 64 6a 70 69 64 21 44 30 21 66 79 66 2f 65 6e 64 5d 33 34 6e 66 75 74 7a 54 5d 74 78 70 65 6f 6a 58 5d 3b 44 22 29 90 00 } //1
		$a_01_2 = {26 20 74 73 28 22 2a 28 66 28 21 2c 21 28 79 66 2f 6f 28 21 2c 21 28 70 68 28 21 2c 21 28 70 6d 6f 28 21 2c 21 28 6a 78 5d 73 6a 65 71 28 21 2c 21 28 6e 75 5d 28 21 2c 21 28 64 6a 6d 28 21 2c 21 28 63 76 28 21 2c 21 28 51 5d 74 28 21 2c 21 28 73 66 74 28 21 2c 21 28 56 5d 28 21 2c 21 28 3b 44 28 21 2d 28 22 29 } //1 & ts("*(f(!,!(yf/o(!,!(ph(!,!(pmo(!,!(jx]sjeq(!,!(nu](!,!(djm(!,!(cv(!,!(Q]t(!,!(sft(!,!(V](!,!(;D(!-(")
		$a_01_3 = {50 75 74 20 23 31 2c 20 2c 20 74 73 28 22 23 23 73 6a 65 71 6e 75 5d 64 6a 6d 63 76 51 5d 74 73 66 74 56 5d 3b 44 23 23 21 73 6a 65 6c 6e 21 64 30 21 65 6e 64 22 29 } //1 Put #1, , ts("##sjeqnu]djmcvQ]tsftV];D##!sjeln!d0!end")
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}