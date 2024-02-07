
rule Trojan_BAT_AgentTesla_CQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_81_0 = {00 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 00 } //01 00  匀卓卓卓卓卓卓卓卓卓卓卓卓卓卓S
		$a_81_1 = {41 5a 58 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 } //01 00  AZXCCCCCCCCCCCCCCCCCCC
		$a_81_2 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_81_3 = {53 74 72 52 65 76 65 72 73 65 } //01 00  StrReverse
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //01 00  FromBase64CharArray
		$a_81_5 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_6 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_81_7 = {43 6f 6c 6f 72 43 6f 6e 76 65 72 74 65 72 } //01 00  ColorConverter
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_10 = {69 6d 69 6d 69 6d 69 6d 69 6d } //01 00  imimimimim
		$a_81_11 = {00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 } //00 00  砀硸硸硸硸硸硸硸硸x
	condition:
		any of ($a_*)
 
}