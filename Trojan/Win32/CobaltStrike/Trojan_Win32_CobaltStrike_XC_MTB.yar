
rule Trojan_Win32_CobaltStrike_XC_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.XC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 0c 3a 83 c7 ?? 8b 88 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 03 88 ?? ?? ?? ?? 09 88 ?? ?? ?? ?? 8b 88 ?? ?? ?? ?? 2b 88 ?? ?? ?? ?? 31 48 ?? 8b 88 ?? ?? ?? ?? 01 48 ?? 8b 88 ?? ?? ?? ?? 81 e9 ?? ?? ?? ?? 01 88 ?? ?? ?? ?? 8b 88 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}