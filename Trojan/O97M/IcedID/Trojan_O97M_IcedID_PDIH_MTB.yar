
rule Trojan_O97M_IcedID_PDIH_MTB{
	meta:
		description = "Trojan:O97M/IcedID.PDIH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {29 73 74 72 69 6e 70 75 74 3d 61 63 74 69 76 65 64 6f 63 75 6d 65 6e 74 2e 63 75 73 74 6f 6d 64 6f 63 75 6d 65 6e 74 70 72 6f 70 65 72 74 69 65 73 28 73 74 72 69 6e 70 75 74 29 90 02 20 3d 22 22 66 6f 72 6b 3d 30 74 6f 6c 65 6e 28 73 74 72 69 6e 70 75 74 29 90 00 } //01 00 
		$a_01_1 = {76 62 67 65 74 2c 29 65 6c 73 65 73 65 74 3d 28 28 29 2c 29 65 6e 64 69 66 73 65 74 3d 65 6e 64 66 75 6e 63 74 69 6f 6e } //01 00  vbget,)elseset=((),)endifset=endfunction
		$a_01_2 = {3d 30 74 6f 28 29 2d 31 73 74 65 70 32 3d 2f 32 28 29 3d 32 35 35 2d 28 26 28 2c 29 26 28 2c 2b 31 29 29 6e 65 78 74 3d 65 6e 64 66 75 6e 63 74 69 6f 6e } //01 00  =0to()-1step2=/2()=255-(&(,)&(,+1))next=endfunction
		$a_01_3 = {30 26 2c 30 26 2c 30 26 2c 30 26 72 65 64 69 6d 28 31 29 65 6e 64 73 75 62 } //00 00  0&,0&,0&,0&redim(1)endsub
	condition:
		any of ($a_*)
 
}