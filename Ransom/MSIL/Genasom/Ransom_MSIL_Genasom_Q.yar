
rule Ransom_MSIL_Genasom_Q{
	meta:
		description = "Ransom:MSIL/Genasom.Q,SIGNATURE_TYPE_PEHSTR,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 6e 63 72 79 70 74 65 64 20 79 6f 75 72 20 64 61 74 61 } //01 00  encrypted your data
		$a_01_1 = {42 54 43 20 70 61 79 6d 65 6e 74 } //01 00  BTC payment
		$a_01_2 = {43 00 79 00 62 00 65 00 72 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 49 00 73 00 41 00 42 00 69 00 74 00 63 00 68 00 } //01 00  CyberSecurityIsABitch
		$a_01_3 = {53 00 68 00 6f 00 72 00 74 00 43 00 75 00 74 00 56 00 42 00 53 00 2e 00 76 00 62 00 73 00 } //01 00  ShortCutVBS.vbs
		$a_01_4 = {59 00 6f 00 75 00 72 00 20 00 44 00 61 00 74 00 61 00 20 00 48 00 61 00 73 00 20 00 42 00 65 00 65 00 6e 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //00 00  Your Data Has Been Encrypted
		$a_01_5 = {00 5d } //04 00  崀
	condition:
		any of ($a_*)
 
}