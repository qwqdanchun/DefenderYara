
rule Trojan_BAT_QuasarRAT_B_MTB{
	meta:
		description = "Trojan:BAT/QuasarRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {00 00 04 08 1a 58 91 5a d2 81 } //01 00 
		$a_01_1 = {73 65 72 76 65 72 31 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  server1.Resources.resources
		$a_01_2 = {75 65 72 69 6a 6e 71 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  uerijnq.Resources.resources
		$a_01_3 = {73 65 72 76 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //02 00  serv.Resources.resources
		$a_01_4 = {67 65 74 5f 49 73 41 74 74 61 63 68 65 64 } //02 00  get_IsAttached
		$a_01_5 = {49 73 4c 6f 67 67 69 6e 67 } //02 00  IsLogging
		$a_01_6 = {43 6f 6e 66 75 73 65 72 45 78 } //00 00  ConfuserEx
	condition:
		any of ($a_*)
 
}