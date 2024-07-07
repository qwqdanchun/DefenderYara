
rule TrojanDownloader_O97M_EncDoc_PAI_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PAI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {63 36 39 37 34 32 30 32 64 36 36 32 30 22 29 2b 63 68 72 28 33 34 29 2b 63 68 72 65 6e 63 6f 64 65 28 22 36 38 37 34 37 34 37 30 33 61 32 66 32 66 36 31 37 30 36 66 32 65 37 30 36 31 36 63 36 35 36 65 36 33 32 65 36 33 36 63 37 35 36 32 33 61 33 32 33 30 33 39 33 35 32 66 36 64 36 31 36 65 36 34 32 66 37 30 36 36 33 30 33 } //1 c6974202d6620")+chr(34)+chrencode("687474703a2f2f61706f2e70616c656e632e636c75623a323039352f6d616e642f7066303
		$a_01_1 = {32 65 36 35 37 38 36 35 22 29 63 61 6c 6c 73 68 65 6c 6c 28 } //1 2e657865")callshell(
		$a_01_2 = {3d 73 73 74 72 2b 63 68 72 28 63 6c 6e 67 28 22 26 68 22 26 6d 69 64 28 73 74 72 2c 69 2c 32 29 29 29 6e 65 78 74 63 68 72 65 6e 63 6f 64 65 3d 73 73 74 72 65 6e 64 66 75 6e 63 74 69 6f 6e 73 75 62 61 75 74 6f 6f 70 65 6e 28 29 } //1 =sstr+chr(clng("&h"&mid(str,i,2)))nextchrencode=sstrendfunctionsubautoopen()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}