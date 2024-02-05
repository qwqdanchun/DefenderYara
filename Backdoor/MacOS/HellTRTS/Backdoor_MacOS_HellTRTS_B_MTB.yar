
rule Backdoor_MacOS_HellTRTS_B_MTB{
	meta:
		description = "Backdoor:MacOS/HellTRTS.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {48 65 6c 6c 52 61 69 73 65 72 20 43 6f 6e 66 69 67 75 72 61 74 6f 72 } //01 00 
		$a_01_1 = {62 79 20 64 63 68 6b 67 } //01 00 
		$a_00_2 = {4f 70 65 6e 52 65 73 6f 75 72 63 65 4d 6f 76 69 65 25 6f 3c 4d 6f 76 69 65 3e } //00 00 
		$a_00_3 = {5d 04 00 } //00 12 
	condition:
		any of ($a_*)
 
}