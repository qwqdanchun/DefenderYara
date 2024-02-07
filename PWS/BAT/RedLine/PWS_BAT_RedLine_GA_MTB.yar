
rule PWS_BAT_RedLine_GA_MTB{
	meta:
		description = "PWS:BAT/RedLine.GA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 0f 00 00 0a 00 "
		
	strings :
		$a_81_0 = {52 75 6e 50 45 } //01 00  RunPE
		$a_80_1 = {54 65 6c 65 67 72 61 6d } //Telegram  0a 00 
		$a_80_2 = {43 68 72 5f 30 5f 4d 5f 65 } //Chr_0_M_e  0a 00 
		$a_80_3 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_6 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_7 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_8 = {53 63 61 6e } //Scan  01 00 
		$a_80_9 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_10 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_11 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_12 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_13 = {4e 6f 72 64 56 50 4e } //NordVPN  f6 ff 
		$a_80_14 = {4d 69 63 72 6f 73 6f 66 74 2e } //Microsoft.  00 00 
	condition:
		any of ($a_*)
 
}