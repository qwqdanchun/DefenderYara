
rule Trojan_BAT_DCRat_CXFW_MTB{
	meta:
		description = "Trojan:BAT/DCRat.CXFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 07 6f 21 00 00 0a 03 07 03 6f 90 01 04 5d 6f 90 01 04 61 d1 0c 06 08 6f 90 01 04 26 07 17 58 0b 07 02 6f 90 01 04 32 d3 90 00 } //1
		$a_01_1 = {61 00 48 00 79 00 50 00 59 00 69 00 66 00 38 00 4c 00 61 00 45 00 6f 00 68 00 38 00 33 00 4e 00 57 00 58 00 57 00 59 00 51 00 75 00 64 00 36 00 74 00 71 00 31 00 58 00 59 00 34 00 65 00 43 00 73 00 55 00 73 00 63 00 4d 00 44 00 78 00 43 00 6a 00 2f 00 77 00 3d 00 } //1 aHyPYif8LaEoh83NWXWYQud6tq1XY4eCsUscMDxCj/w=
		$a_01_2 = {70 00 54 00 50 00 32 00 4e 00 66 00 2f 00 72 00 4a 00 6b 00 2b 00 79 00 4f 00 34 00 7a 00 54 00 72 00 51 00 71 00 45 00 50 00 51 00 3d 00 3d 00 } //1 pTP2Nf/rJk+yO4zTrQqEPQ==
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}