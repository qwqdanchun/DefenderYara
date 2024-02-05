
rule Trojan_Win32_StopCrypt_RPL_MTB{
	meta:
		description = "Trojan:Win32/StopCrypt.RPL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 45 e8 8b 45 e8 89 45 e0 8b 4d ec 8b c6 d3 e8 89 45 f8 8b 45 d4 01 45 f8 8b 4d f8 33 4d e0 89 3d 90 01 04 31 4d f4 8b 45 f4 29 45 f0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}