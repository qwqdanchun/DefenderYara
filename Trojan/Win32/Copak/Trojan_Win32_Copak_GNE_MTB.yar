
rule Trojan_Win32_Copak_GNE_MTB{
	meta:
		description = "Trojan:Win32/Copak.GNE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {01 c9 21 f9 e8 90 01 04 01 ff 21 cf 31 13 21 c9 bf 90 01 04 21 f9 43 21 ff 39 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}