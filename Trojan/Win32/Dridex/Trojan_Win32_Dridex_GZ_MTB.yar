
rule Trojan_Win32_Dridex_GZ_MTB{
	meta:
		description = "Trojan:Win32/Dridex.GZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 0e 81 c1 ?? ?? ?? ?? 89 0e 89 0d ?? ?? ?? ?? 8b ca 2b cf 69 c9 ?? ?? ?? ?? 02 db 2a 1d ?? ?? ?? ?? 66 03 c1 02 1d ?? ?? ?? ?? 83 c6 04 80 c3 ?? 83 ed 01 66 a3 ?? ?? ?? ?? 0f 85 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}