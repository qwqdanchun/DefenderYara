
rule Trojan_Win32_PikaBot_CCCE_MTB{
	meta:
		description = "Trojan:Win32/PikaBot.CCCE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 1c 07 83 c7 ?? 0f af 59 ?? 8b 46 ?? 35 ?? ?? ?? ?? 0f af 81 ?? ?? ?? ?? 89 81 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 80 ?? ?? ?? ?? 33 86 ?? ?? ?? ?? 2d ?? ?? ?? ?? 01 46 ?? 8b 86 ?? ?? ?? ?? 33 46 ?? 8b 15 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}