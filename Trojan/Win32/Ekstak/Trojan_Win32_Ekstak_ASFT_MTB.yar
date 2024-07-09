
rule Trojan_Win32_Ekstak_ASFT_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.ASFT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 00 be 0a 00 da 0e d9 3f } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}