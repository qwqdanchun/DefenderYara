
rule Trojan_Win32_GuLoader_SIBE_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.SIBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {39 08 9c 9d 90 18 90 02 20 83 c0 ff 90 02 20 39 08 9c 9d 75 90 01 01 90 01 20 90 02 f0 8b 1c 18 90 01 20 90 02 f0 50 90 01 20 90 02 f0 50 90 02 20 68 90 01 04 90 02 20 31 c0 90 02 20 50 90 02 20 ff d3 90 02 20 be 90 01 04 90 02 20 b9 90 01 04 90 02 20 bf 90 01 04 90 02 20 31 d2 90 02 20 33 14 0e 90 02 20 09 14 08 90 02 20 31 3c 08 90 02 20 81 e9 90 01 04 90 02 20 81 c1 90 01 04 90 02 20 41 7d 90 01 01 90 02 20 ff e0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}