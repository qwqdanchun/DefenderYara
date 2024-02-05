
rule Trojan_Win32_KryptInject_DSK_MTB{
	meta:
		description = "Trojan:Win32/KryptInject.DSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {0f b6 04 18 30 83 90 01 04 8b 45 fc 8d b0 90 01 04 b8 25 49 92 24 03 f3 f7 e6 b8 90 01 04 2b f2 d1 ee 03 f2 c1 ee 04 8d 0c f5 00 00 00 00 2b ce c1 e1 02 2b c1 0f b6 04 18 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}