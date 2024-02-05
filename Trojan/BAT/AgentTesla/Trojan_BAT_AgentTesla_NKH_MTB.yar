
rule Trojan_BAT_AgentTesla_NKH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NKH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 0a 00 00 0a 00 "
		
	strings :
		$a_02_0 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 39 00 34 00 33 00 90 02 20 2f 00 39 00 34 00 33 00 90 00 } //0a 00 
		$a_02_1 = {63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 39 34 33 90 02 20 2f 39 34 33 90 00 } //0a 00 
		$a_01_2 = {63 00 6d 00 64 00 00 21 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 62 00 69 00 6e 00 67 00 2e 00 63 00 6f 00 6d } //0a 00 
		$a_01_3 = {47 65 74 4d 65 74 68 6f 64 73 } //0a 00 
		$a_01_4 = {52 65 76 65 72 73 65 } //01 00 
		$a_80_5 = {53 71 77 6c 69 71 70 7a 68 70 65 74 75 78 } //Sqwliqpzhpetux  01 00 
		$a_80_6 = {4c 6b 69 70 65 64 73 7a 73 79 76 6d 6d 74 67 67 75 6a 72 75 76 } //Lkipedszsyvmmtggujruv  01 00 
		$a_80_7 = {4a 63 7a 78 65 6e 63 7a 78 62 63 6e 62 79 73 65 76 74 } //Jczxenczxbcnbysevt  01 00 
		$a_80_8 = {52 62 6c 74 6c 61 68 68 } //Rbltlahh  01 00 
		$a_80_9 = {42 61 68 6b 76 61 67 75 65 61 7a 6c 78 75 67 69 6a 75 61 } //Bahkvagueazlxugijua  00 00 
	condition:
		any of ($a_*)
 
}