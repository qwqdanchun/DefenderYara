
rule Trojan_AndroidOS_Ahmythspy_B{
	meta:
		description = "Trojan:AndroidOS/Ahmythspy.B,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {61 68 6d 79 74 68 2f 6d 69 6e 65 2f 6b 69 6e 67 2f 61 68 6d 79 74 68 } //02 00  ahmyth/mine/king/ahmyth
		$a_00_1 = {78 30 30 30 30 63 6e } //02 00  x0000cn
		$a_00_2 = {66 69 6e 64 43 61 6d 65 72 61 4c 69 73 74 } //00 00  findCameraList
	condition:
		any of ($a_*)
 
}