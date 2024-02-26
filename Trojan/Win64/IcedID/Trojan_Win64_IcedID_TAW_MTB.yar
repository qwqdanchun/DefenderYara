
rule Trojan_Win64_IcedID_TAW_MTB{
	meta:
		description = "Trojan:Win64/IcedID.TAW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {45 8b 0c 02 49 83 c2 04 8b 81 90 01 04 35 a8 a5 f3 00 09 81 0c 01 00 00 48 8b 15 ba d3 04 00 8b 8a c4 00 00 00 8b 82 48 01 00 00 81 f1 a9 a5 f3 00 0f af c1 89 82 48 01 00 00 48 63 0d 10 d4 04 00 44 0f af 0d 04 d4 04 00 48 8b 05 90 01 04 41 8b d1 c1 ea 18 88 14 01 41 8b d1 44 8b 05 ee d3 04 00 48 8b 0d 6f d3 04 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}