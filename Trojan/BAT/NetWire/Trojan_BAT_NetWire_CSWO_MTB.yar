
rule Trojan_BAT_NetWire_CSWO_MTB{
	meta:
		description = "Trojan:BAT/NetWire.CSWO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {fe 0c 03 00 8e 69 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 61 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 59 5f 62 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 59 20 20 00 00 00 20 e5 1d d8 79 59 20 00 00 e0 03 20 cb 6c 72 75 20 1f 00 00 00 5f 62 20 00 00 e0 03 20 20 00 00 00 20 cb 6c 72 75 59 20 1f 00 00 00 5f 64 60 5f 64 60 5a } //5
		$a_01_1 = {4d 00 3f 00 61 00 69 00 6e 00 3f 00 46 00 3f 00 6f 00 3f 00 72 00 3f 00 6d 00 } //1 M?ain?F?o?r?m
		$a_01_2 = {7a 00 49 00 7a 00 6d 00 6d 00 65 00 7a 00 64 00 69 00 7a 00 61 00 7a 00 74 00 7a 00 65 00 6c 00 7a 00 79 00 7a 00 54 00 68 00 65 00 79 00 } //1 zIzmmezdizaztzelzyzThey
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}