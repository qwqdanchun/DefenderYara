
rule Trojan_Win32_GandCrypt_GD_MTB{
	meta:
		description = "Trojan:Win32/GandCrypt.GD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {50 6a 00 ff d7 81 fe 4a 38 02 00 7e ?? b9 db 86 00 00 66 3b d9 75 ?? 46 81 fe 36 9c 97 01 7c } //1
		$a_02_1 = {6a 00 ff 15 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 69 c9 ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 81 05 ?? ?? ?? ?? c3 9e 26 00 81 3d ?? ?? ?? ?? cf 12 00 00 0f b7 1d ?? ?? ?? ?? 75 ?? 6a 00 6a 00 ff 15 ?? ?? ?? ?? 8b 45 f8 30 1c 06 46 3b f7 7c } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}