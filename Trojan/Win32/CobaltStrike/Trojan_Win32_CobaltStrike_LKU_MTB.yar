
rule Trojan_Win32_CobaltStrike_LKU_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.LKU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 40 3c 31 04 11 83 c2 04 8b 45 ?? 01 45 ?? 8b 0d ?? ?? ?? ?? 8b 45 ?? ?? ?? ?? ?? ?? 01 81 ac 00 00 00 81 fa ?? ?? ?? ?? 7c } //1
		$a_03_1 = {01 41 40 8b 0d ?? ?? ?? ?? 8b 81 d0 00 00 00 35 ?? ?? ?? ?? 09 41 40 b8 ?? ?? ?? ?? 2b 86 80 00 00 00 01 05 ?? ?? ?? ?? 81 ff ?? ?? 00 00 0f 8c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}