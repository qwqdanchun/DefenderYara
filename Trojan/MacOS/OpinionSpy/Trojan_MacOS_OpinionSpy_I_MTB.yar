
rule Trojan_MacOS_OpinionSpy_I_MTB{
	meta:
		description = "Trojan:MacOS/OpinionSpy.I!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {73 65 63 75 72 65 73 74 75 64 69 65 73 2e 63 6f 6d } //02 00 
		$a_00_1 = {6d 61 63 6d 65 74 65 72 32 2f 6d 61 73 74 65 72 2f 4d 61 63 41 6e 61 6c 79 73 65 72 2f 6d 61 63 61 6e 61 6c 79 73 65 72 } //01 00 
		$a_00_2 = {2e 61 70 70 2f 43 6f 6e 74 65 6e 74 73 2f 52 65 73 6f 75 72 63 65 73 2f 6d 6d 69 6a 2e 61 70 70 2f 43 6f 6e 74 65 6e 74 73 2f 4d 61 63 4f 53 2f 6d 6d 69 6a } //01 00 
		$a_00_3 = {2f 74 6d 70 2f 74 6d 70 46 69 6c 65 2e 58 58 58 58 58 58 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}