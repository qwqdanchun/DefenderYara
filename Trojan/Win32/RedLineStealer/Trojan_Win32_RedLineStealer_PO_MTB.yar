
rule Trojan_Win32_RedLineStealer_PO_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.PO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 4d fc c1 e1 ?? 03 4d e8 8b 45 fc 03 45 f8 89 45 0c 8b 55 fc 83 0d ?? ?? ?? ?? ff 8b c2 c1 e8 ?? 03 45 e4 68 ?? ?? ?? ?? 33 45 0c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}