
rule Trojan_Win32_Cobalt_AMAA_MTB{
	meta:
		description = "Trojan:Win32/Cobalt.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 4d 10 89 c2 83 e2 90 01 01 8a 14 11 8b 4d 08 32 14 01 88 14 06 40 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}