
rule Trojan_Win32_AsyncRAT_GFF_MTB{
	meta:
		description = "Trojan:Win32/AsyncRAT.GFF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 84 3c 90 01 04 88 84 34 90 01 04 88 8c 3c 90 01 04 0f b6 84 34 90 01 04 8b 4c 24 14 03 c2 0f b6 c0 0f b6 84 04 90 01 04 30 04 0b 43 3b 5c 24 10 72 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}