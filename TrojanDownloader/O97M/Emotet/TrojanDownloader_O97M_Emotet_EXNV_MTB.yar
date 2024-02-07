
rule TrojanDownloader_O97M_Emotet_EXNV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.EXNV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 36 38 2f 71 71 71 77 2f 61 61 61 73 2f 73 65 2e 68 74 6d 6c } //01 00  91.240.118.168/qqqw/aaas/se.html
		$a_01_1 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 36 38 2f 7a 71 71 77 2f 7a 61 61 73 2f 66 65 2e 68 74 6d 6c } //01 00  91.240.118.168/zqqw/zaas/fe.html
		$a_01_2 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 67 67 2f 66 66 2f 66 65 2e 68 74 6d 6c } //01 00  91.240.118.172/gg/ff/fe.html
		$a_01_3 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 67 67 2f 66 66 2f 73 65 2e 68 74 6d 6c } //01 00  91.240.118.172/gg/ff/se.html
		$a_01_4 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 65 65 2f 73 73 2f 73 65 2e 68 74 6d 6c } //01 00  91.240.118.172/ee/ss/se.html
		$a_01_5 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 63 63 2f 76 76 2f 66 65 2e 68 74 6d 6c } //01 00  91.240.118.172/cc/vv/fe.html
		$a_01_6 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 6d 6d 2f 6e 6e 2f 73 65 2e 68 74 6d 6c } //01 00  91.240.118.172/mm/nn/se.html
		$a_01_7 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 68 68 2f 68 68 2e 68 74 6d 6c } //00 00  91.240.118.172/hh/hh.html
	condition:
		any of ($a_*)
 
}