
rule Trojan_AndroidOS_Opfake_B{
	meta:
		description = "Trojan:AndroidOS/Opfake.B,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 4f 43 58 43 5d 67 4f 43 42 3f 73 2d 6d } //01 00  BOCXC]gOCB?s-m
		$a_01_1 = {39 6c 6f 79 6e 31 33 7a 69 31 77 4d } //00 00  9loyn13zi1wM
	condition:
		any of ($a_*)
 
}