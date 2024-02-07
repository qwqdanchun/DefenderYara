
rule Trojan_AndroidOS_SMforw_C{
	meta:
		description = "Trojan:AndroidOS/SMforw.C,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 70 5f 67 65 74 73 6d 73 62 6c 6f 63 6b 73 74 61 74 65 2e 70 68 70 3f 74 65 6c 6e 75 6d 3d } //01 00  hp_getsmsblockstate.php?telnum=
		$a_00_1 = {67 65 74 54 65 6c 43 6f 6d 70 61 6e 79 } //01 00  getTelCompany
		$a_00_2 = {3f 74 79 70 65 3d 6a 6f 69 6e 26 74 65 6c 6e 75 6d 3d } //01 00  ?type=join&telnum=
		$a_00_3 = {62 75 69 6c 65 43 6c 69 65 6e 74 } //01 00  buileClient
		$a_00_4 = {70 6f 73 74 47 50 53 44 61 74 61 } //00 00  postGPSData
	condition:
		any of ($a_*)
 
}