
rule Trojan_Win32_ParallaxRAT_A_MTB{
	meta:
		description = "Trojan:Win32/ParallaxRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {fe c3 f7 db 81 c3 90 01 04 f7 db f7 db f6 d3 f6 d3 fe c3 33 ff ff cb 29 9d 90 01 02 ff ff c0 e3 90 01 01 66 81 90 01 03 c0 eb 90 01 01 f7 db f6 d3 81 f3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}