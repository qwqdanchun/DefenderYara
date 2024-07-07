
rule Trojan_O97M_Cryxos_AAE_MTB{
	meta:
		description = "Trojan:O97M/Cryxos.AAE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 0f 28 22 90 02 05 57 90 02 05 53 90 02 05 63 90 02 05 72 90 02 05 69 90 02 05 70 90 02 05 74 90 02 05 22 20 26 20 22 90 02 05 2e 53 90 02 05 68 90 02 05 65 6c 90 02 05 6c 22 29 90 00 } //1
		$a_03_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 90 02 0f 28 22 90 02 2f 22 29 90 00 } //1
		$a_03_2 = {26 20 43 68 72 28 90 02 0f 20 2b 20 90 05 03 03 30 2d 39 29 20 26 20 90 02 0f 20 26 20 43 68 72 28 90 02 0f 20 2b 20 90 05 03 03 30 2d 39 29 90 0a 6f 00 28 22 90 02 05 65 90 02 05 78 90 02 05 70 90 02 05 6c 90 02 05 6f 90 02 05 72 90 02 05 65 90 02 05 72 90 02 05 2e 90 02 05 65 90 02 05 78 90 02 05 65 90 02 05 22 29 90 00 } //1
		$a_03_3 = {52 65 70 6c 61 63 65 28 90 05 05 03 61 2d 7a 2c 20 22 90 02 05 22 2c 20 22 22 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}