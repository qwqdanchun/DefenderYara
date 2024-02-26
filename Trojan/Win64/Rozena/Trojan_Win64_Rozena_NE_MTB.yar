
rule Trojan_Win64_Rozena_NE_MTB{
	meta:
		description = "Trojan:Win64/Rozena.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {48 8b 95 e8 01 00 00 4c 8d 04 11 48 63 d0 48 69 d2 90 01 04 48 c1 ea 20 c1 fa 05 89 c1 90 00 } //03 00 
		$a_03_1 = {c1 f9 1f 29 ca 69 ca 90 01 04 29 c8 89 c2 41 89 10 83 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}