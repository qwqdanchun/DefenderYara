
rule Backdoor_AndroidOS_Clinator_A_MTB{
	meta:
		description = "Backdoor:AndroidOS/Clinator.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {15 00 00 00 12 12 62 00 90 01 02 12 01 6e 30 90 01 02 10 02 0a 00 38 00 0a 00 22 00 90 01 02 70 10 90 01 02 00 00 6e 10 90 01 02 00 00 0f 02 0d 00 28 fe 90 00 } //01 00 
		$a_00_1 = {49 6e 65 74 41 64 64 72 65 73 73 } //01 00  InetAddress
		$a_00_2 = {63 6f 6d 2f 69 76 65 6e 67 6f 2f 61 64 73 } //00 00  com/ivengo/ads
	condition:
		any of ($a_*)
 
}