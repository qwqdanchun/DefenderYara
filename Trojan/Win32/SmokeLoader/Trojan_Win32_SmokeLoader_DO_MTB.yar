
rule Trojan_Win32_SmokeLoader_DO_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.DO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {33 c1 8d 0c 3b 33 c1 2b f0 8b d6 c1 e2 04 89 44 24 14 89 54 24 10 8b 44 24 24 01 44 24 10 81 3d 90 02 04 be 01 00 00 8d 2c 33 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}