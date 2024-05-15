
rule Trojan_Win64_Lazy_AMMH_MTB{
	meta:
		description = "Trojan:Win64/Lazy.AMMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 d3 ea 45 02 c0 80 e2 01 44 0a c2 41 0f b7 d2 66 d3 ea 45 02 c0 0f b7 4d 6f 80 e2 01 44 0a c2 44 88 07 48 ff c7 49 83 e9 01 0f 85 } //01 00 
		$a_03_1 = {0f b7 43 0e 48 83 eb 10 66 31 45 90 01 01 45 3b f7 0f 8e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}