
rule TrojanDropper_Win32_Bunitu_BA_MTB{
	meta:
		description = "TrojanDropper:Win32/Bunitu.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 e8 03 a3 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 2b 0d ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 83 3d ?? ?? ?? ?? 00 0f 85 } //1
		$a_00_1 = {81 e9 09 b5 00 00 51 c3 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}