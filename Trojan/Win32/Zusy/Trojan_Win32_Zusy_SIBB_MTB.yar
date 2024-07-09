
rule Trojan_Win32_Zusy_SIBB_MTB{
	meta:
		description = "Trojan:Win32/Zusy.SIBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {41 00 57 00 44 00 65 00 73 00 6b 00 } //1 AWDesk
		$a_00_1 = {45 4e 44 50 4f 49 4e 54 44 4c 50 2e 44 4c 4c } //1 ENDPOINTDLP.DLL
		$a_03_2 = {ba 01 00 00 00 a1 ?? ?? ?? ?? 8b 38 ff 57 0c 8b 85 ?? ?? ?? ?? 8b 16 0f b6 7c 10 ff a1 ?? ?? ?? ?? e8 ?? ?? ?? ?? ba 00 01 00 00 2b d0 52 a1 ?? ?? ?? ?? e8 ?? ?? ?? ?? 5a 92 8b ca 99 f7 f9 03 fa 8b d7 8d 85 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 95 90 1b 06 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? ff 06 ff 4d ?? 75 95 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}