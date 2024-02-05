
rule PWS_BAT_Browsstl_GG_MTB{
	meta:
		description = "PWS:BAT/Browsstl.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0c 00 00 01 00 "
		
	strings :
		$a_80_0 = {42 72 6f 77 73 65 72 73 } //Browsers  01 00 
		$a_80_1 = {43 68 72 6f 6d 69 75 6d } //Chromium  01 00 
		$a_80_2 = {46 69 72 65 66 6f 78 } //Firefox  01 00 
		$a_80_3 = {43 6f 6f 6b 69 65 73 } //Cookies  01 00 
		$a_80_4 = {43 72 65 64 65 6e 74 69 61 6c 73 } //Credentials  01 00 
		$a_80_5 = {43 72 65 64 69 74 5f 43 61 72 64 73 } //Credit_Cards  01 00 
		$a_80_6 = {43 72 65 64 69 74 5f 43 61 72 64 73 5f 44 61 74 61 } //Credit_Cards_Data  01 00 
		$a_80_7 = {41 75 74 6f 66 69 6c 6c } //Autofill  01 00 
		$a_80_8 = {53 71 6c 69 74 65 } //Sqlite  01 00 
		$a_80_9 = {42 43 72 79 70 74 } //BCrypt  01 00 
		$a_80_10 = {44 65 62 75 67 67 65 72 } //Debugger  01 00 
		$a_80_11 = {67 65 74 5f 49 73 41 6c 69 76 65 } //get_IsAlive  00 00 
	condition:
		any of ($a_*)
 
}