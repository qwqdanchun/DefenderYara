
rule Trojan_Win32_Ekstak_CA_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.CA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {84 c0 75 14 a1 ?? ?? ?? ?? 8b ?? 0c 03 ?? 03 ?? 8a ?? ?? ?? ?? ?? 30 ?? 83 3d ?? ?? ?? ?? 03 76 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}