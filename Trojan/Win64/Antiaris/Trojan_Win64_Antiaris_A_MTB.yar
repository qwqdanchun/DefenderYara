
rule Trojan_Win64_Antiaris_A_MTB{
	meta:
		description = "Trojan:Win64/Antiaris.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8d 41 e7 30 44 0d 90 01 01 48 ff c1 48 83 f9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}