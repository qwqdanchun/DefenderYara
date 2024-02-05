
rule Trojan_BAT_Xmrig_CZX_MTB{
	meta:
		description = "Trojan:BAT/Xmrig.CZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 11 00 00 06 0a 28 90 01 04 06 6f 90 01 04 28 90 01 04 28 90 01 04 0b dd 90 00 } //05 00 
		$a_01_1 = {02 06 91 0c 02 06 02 07 91 9c 02 07 08 9c 06 17 58 0a 07 17 59 0b 06 07 32 } //00 00 
	condition:
		any of ($a_*)
 
}