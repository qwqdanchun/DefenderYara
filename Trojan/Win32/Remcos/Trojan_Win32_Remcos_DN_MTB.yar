
rule Trojan_Win32_Remcos_DN_MTB{
	meta:
		description = "Trojan:Win32/Remcos.DN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {f7 da 83 c2 10 33 c9 0f b6 99 00 90 01 03 c1 e3 18 81 f3 00 00 00 90 01 01 c1 eb 18 88 1c 01 41 3b ca 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}