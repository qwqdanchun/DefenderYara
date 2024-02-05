
rule DoS_Win64_Sedeldos_C_dha{
	meta:
		description = "DoS:Win64/Sedeldos.C!dha,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {73 00 64 00 65 00 6c 00 65 00 74 00 65 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 0a 2d 00 71 00 90 02 0a 63 00 3a 00 5c 00 75 00 73 00 65 00 72 00 73 00 90 00 } //01 00 
		$a_02_1 = {73 00 64 00 65 00 6c 00 65 00 74 00 65 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 0a 2d 00 71 00 90 02 0a 63 00 3a 00 5c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 64 00 61 00 74 00 61 00 90 00 } //01 00 
		$a_02_2 = {73 00 64 00 65 00 6c 00 65 00 74 00 65 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 0a 2d 00 71 00 90 02 0a 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 90 00 } //01 00 
		$a_02_3 = {73 00 64 00 65 00 6c 00 65 00 74 00 65 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 0a 2d 00 71 00 90 02 0a 64 00 3a 00 90 00 } //01 00 
		$a_02_4 = {73 00 64 00 65 00 6c 00 65 00 74 00 65 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 0a 2d 00 71 00 90 02 0a 65 00 3a 00 90 00 } //01 00 
		$a_02_5 = {73 00 64 00 65 00 6c 00 65 00 74 00 65 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 0a 2d 00 71 00 90 02 0a 66 00 3a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}