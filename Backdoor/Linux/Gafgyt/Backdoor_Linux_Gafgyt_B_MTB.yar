
rule Backdoor_Linux_Gafgyt_B_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.B!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {61 74 74 61 63 6b 5f 78 6d 61 73 5f 66 6c 6f 6f 64 } //02 00 
		$a_00_1 = {61 74 74 61 63 6b 5f 75 64 70 5f 66 6c 6f 6f 64 } //01 00 
		$a_00_2 = {2f 65 74 63 2f 64 72 6f 70 62 65 61 72 2f } //01 00 
		$a_00_3 = {2f 6b 69 6c 6c 61 6c 6c 62 6f 74 73 } //00 00 
	condition:
		any of ($a_*)
 
}