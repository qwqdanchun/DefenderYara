
rule Trojan_Win32_Zenpak_ASZ_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.ASZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {55 89 e5 8a 45 0c 8a 4d 08 c7 05 ?? ?? ?? ?? f0 1a 00 00 c7 05 ?? ?? ?? ?? e7 11 00 00 30 c8 0f b6 c0 5d c3 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}