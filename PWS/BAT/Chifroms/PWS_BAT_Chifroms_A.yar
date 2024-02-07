
rule PWS_BAT_Chifroms_A{
	meta:
		description = "PWS:BAT/Chifroms.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 74 65 61 6d 73 74 65 61 6c 00 } //01 00 
		$a_01_1 = {67 65 74 5f 57 69 6e 64 6f 77 73 43 44 4b 65 79 50 61 72 74 73 00 } //01 00  敧彴楗摮睯䍳䭄祥慐瑲s
		$a_01_2 = {67 65 74 5f 50 61 73 73 77 6f 72 64 46 6f 78 00 } //01 00  敧彴慐獳潷摲潆x
		$a_01_3 = {67 65 74 5f 6d 73 70 61 73 73 00 } //01 00 
		$a_01_4 = {63 68 72 6f 6d 65 73 74 65 61 6c 00 } //00 00  档潲敭瑳慥l
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_Chifroms_A_2{
	meta:
		description = "PWS:BAT/Chifroms.A,SIGNATURE_TYPE_PEHSTR,07 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 43 68 72 6f 6d 65 50 61 73 73 } //01 00  get_ChromePass
		$a_01_1 = {67 65 74 5f 69 65 70 76 } //01 00  get_iepv
		$a_01_2 = {67 65 74 5f 6d 73 70 61 73 73 } //01 00  get_mspass
		$a_01_3 = {67 65 74 5f 50 61 73 73 77 6f 72 64 46 6f 78 } //01 00  get_PasswordFox
		$a_01_4 = {4d 6f 7a 69 6c 6c 61 53 74 65 61 6c } //01 00  MozillaSteal
		$a_01_5 = {43 68 72 6f 6d 65 53 74 65 61 6c } //01 00  ChromeSteal
		$a_01_6 = {49 65 53 74 65 61 6c } //01 00  IeSteal
		$a_01_7 = {4d 61 69 6c 53 74 65 61 6c } //01 00  MailSteal
		$a_01_8 = {73 74 65 61 6d 73 74 65 61 6c } //00 00  steamsteal
	condition:
		any of ($a_*)
 
}