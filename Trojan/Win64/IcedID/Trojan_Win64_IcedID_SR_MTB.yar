
rule Trojan_Win64_IcedID_SR_MTB{
	meta:
		description = "Trojan:Win64/IcedID.SR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 8a 0e 49 ff c6 88 0a 48 ff c2 48 83 ee 90 01 01 75 90 00 } //01 00 
		$a_03_1 = {49 8b cf 8b c2 ff c2 83 e0 90 01 01 8a 44 38 90 01 01 30 01 48 90 01 02 3b 54 24 90 01 01 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}