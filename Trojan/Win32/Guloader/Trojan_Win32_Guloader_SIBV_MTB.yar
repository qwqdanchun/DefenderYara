
rule Trojan_Win32_Guloader_SIBV_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SIBV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {48 49 44 45 4e 5f 45 58 45 } //1 HIDEN_EXE
		$a_03_1 = {ba 01 00 00 00 a1 ?? ?? ?? ?? 8b 38 ff 57 0c 8b 85 ?? ?? ?? ?? 8b 16 0f b6 7c 10 ff a1 ?? ?? ?? ?? e8 ?? ?? ?? ?? ba 00 01 00 00 2b d0 52 a1 ?? ?? ?? ?? e8 ?? ?? ?? ?? 5a 92 8b ca 99 f7 f9 03 fa 8b d7 8d 85 ?? ?? ?? ?? e8 e4 6b fa ff 8b 95 90 1b 06 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? ff 06 ff 4d ?? 75 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}