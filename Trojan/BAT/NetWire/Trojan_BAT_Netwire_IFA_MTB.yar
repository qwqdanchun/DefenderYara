
rule Trojan_BAT_Netwire_IFA_MTB{
	meta:
		description = "Trojan:BAT/Netwire.IFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 00 6f 00 72 00 61 00 6e 00 64 00 6f 00 } //01 00  Korando
		$a_81_1 = {49 44 65 66 65 72 72 65 64 } //01 00  IDeferred
		$a_81_2 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_81_3 = {5f 5a 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f } //01 00  _Z_________________________________________
		$a_81_4 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_81_5 = {54 6f 49 6e 74 33 32 } //00 00  ToInt32
	condition:
		any of ($a_*)
 
}