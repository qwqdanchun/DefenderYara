
rule Trojan_Win32_Remcos_BA_MTB{
	meta:
		description = "Trojan:Win32/Remcos.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {83 c0 01 89 45 ?? 8b 4d ?? 3b 8d ?? ?? ff ff 7d ?? 8b 45 ?? 99 f7 bd ?? ?? ff ff 8b 85 ?? ?? ff ff 0f be 0c 10 8b 95 ?? ?? ff ff 03 55 ?? 0f be 02 33 c1 8b 8d ?? ?? ff ff 03 4d ?? 88 01 eb } //1
		$a_03_1 = {c6 85 30 ff ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff } //1
		$a_03_2 = {c6 85 74 fe ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff c6 85 ?? ?? ff ff } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}