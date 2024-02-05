
rule PWS_BAT_HawkEye_GG_MTB{
	meta:
		description = "PWS:BAT/HawkEye.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0e 00 00 14 00 "
		
	strings :
		$a_02_0 = {48 00 61 00 77 00 6b 00 45 00 79 00 65 00 90 02 04 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 90 00 } //14 00 
		$a_02_1 = {48 61 77 6b 45 79 65 90 02 04 4b 65 79 6c 6f 67 67 65 72 90 00 } //01 00 
		$a_80_2 = {44 65 61 72 20 48 61 77 6b 45 79 65 } //Dear HawkEye  01 00 
		$a_02_3 = {43 00 6c 00 69 00 70 00 42 00 6f 00 61 00 72 00 64 00 90 02 06 52 00 65 00 63 00 6f 00 72 00 64 00 90 00 } //01 00 
		$a_02_4 = {43 6c 69 70 42 6f 61 72 64 90 02 06 52 65 63 6f 72 64 90 00 } //01 00 
		$a_02_5 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 90 02 06 52 00 65 00 63 00 6f 00 72 00 64 00 90 00 } //01 00 
		$a_02_6 = {4b 65 79 6c 6f 67 90 02 06 52 65 63 6f 72 64 90 00 } //01 00 
		$a_80_7 = {73 63 72 65 65 6e 73 68 6f 74 } //screenshot  01 00 
		$a_80_8 = {53 74 65 61 6c 65 72 } //Stealer  01 00 
		$a_80_9 = {57 61 6c 6c 65 74 } //Wallet  01 00 
		$a_80_10 = {62 69 74 63 6f 69 6e 7d } //bitcoin}  01 00 
		$a_80_11 = {44 69 73 61 62 6c 65 73 70 72 65 61 64 65 72 } //Disablespreader  01 00 
		$a_80_12 = {57 65 62 42 72 6f 77 73 65 72 50 61 73 73 56 69 65 77 } //WebBrowserPassView  01 00 
		$a_80_13 = {42 61 6e 6b } //Bank  00 00 
	condition:
		any of ($a_*)
 
}