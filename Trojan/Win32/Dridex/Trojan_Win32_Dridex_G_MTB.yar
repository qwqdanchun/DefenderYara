
rule Trojan_Win32_Dridex_G_MTB{
	meta:
		description = "Trojan:Win32/Dridex.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_02_0 = {83 e8 01 74 90 01 01 8d 86 90 01 04 0f b7 c0 90 18 2a c7 0f b7 f2 2c 4a 8a f8 8b 01 05 dc f2 0c 01 89 01 83 c1 04 83 6c 24 90 01 01 01 a3 90 01 04 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}