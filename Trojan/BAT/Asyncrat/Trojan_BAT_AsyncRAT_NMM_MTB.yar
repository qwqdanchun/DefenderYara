
rule Trojan_BAT_AsyncRAT_NMM_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NMM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {fe 0c 02 00 28 ?? ?? ?? 0a 80 ?? ?? ?? 04 20 ?? ?? ?? ff 66 20 ?? ?? ?? 00 59 66 fe ?? ?? 00 38 ?? ?? ?? ff 01 20 ?? ?? ?? 00 25 fe ?? ?? 00 26 fe ?? ?? 00 fe ?? ?? 00 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a fe ?? ?? 00 20 ?? ?? ?? 00 fe ?? ?? 00 20 ?? ?? ?? 00 65 65 20 ?? ?? ?? 00 59 fe ?? ?? 00 38 ?? ?? ?? ff 01 20 ?? ?? ?? 00 25 fe ?? ?? 00 26 ?? ?? ?? 00 8e 69 8d ?? ?? ?? 01 20 ?? ?? ?? 00 } //5
		$a_01_1 = {4d 61 69 6e 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 Mains.My.Resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}