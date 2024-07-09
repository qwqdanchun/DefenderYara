
rule Trojan_O97M_IcedID_PDIG_MTB{
	meta:
		description = "Trojan:O97M/IcedID.PDIG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {29 73 74 72 69 6e 70 75 74 3d 61 63 74 69 76 65 64 6f 63 75 6d 65 6e 74 2e 63 75 73 74 6f 6d 64 6f 63 75 6d 65 6e 74 70 72 6f 70 65 72 74 69 65 73 28 73 74 72 69 6e 70 75 74 29 [0-0a] 3d 22 22 66 6f 72 6b 3d 30 74 6f 6c 65 6e 28 73 74 72 69 6e 70 75 74 29 } //1
		$a_03_1 = {76 62 67 65 74 2c 29 65 6c 73 65 73 65 74 3d 28 28 29 2c 29 65 6e 64 69 66 73 65 74 3d 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 28 29 3d [0-01] 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 28 29 3d } //1
		$a_01_2 = {2e 76 61 6c 75 65 29 65 6c 73 65 3d 28 28 73 78 69 6e 63 68 69 62 76 28 22 61 74 37 6c 6c 64 72 77 22 29 29 2e 76 61 6c 75 65 29 } //1 .value)else=((sxinchibv("at7lldrw")).value)
		$a_01_3 = {2e 76 61 6c 75 65 29 65 6c 73 65 3d 28 28 7a 66 70 37 73 76 66 6c 63 69 28 22 6a 61 76 33 65 6f 32 73 22 29 29 2e 76 61 6c 75 65 29 } //1 .value)else=((zfp7svflci("jav3eo2s")).value)
		$a_01_4 = {3d 30 74 6f 28 29 2d 31 73 74 65 70 32 3d 2f 32 28 29 3d 32 35 35 2d 28 26 28 2c 29 26 28 2c 2b 31 29 29 6e 65 78 74 3d 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 28 } //1 =0to()-1step2=/2()=255-(&(,)&(,+1))next=endfunctionfunction(
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}