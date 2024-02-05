
rule Trojan_Win32_Cryptinject_PX_MTB{
	meta:
		description = "Trojan:Win32/Cryptinject.PX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b ce 0f b6 f0 0f af f1 89 0d 90 01 04 8a 2d 90 01 04 2b f7 89 35 90 01 04 8b 02 05 3c f0 0d 01 89 02 83 c2 04 a3 90 01 04 8d 43 b8 02 05 90 01 04 83 6c 24 10 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}