
rule TrojanDropper_Win32_Bunitu_MT_MTB{
	meta:
		description = "TrojanDropper:Win32/Bunitu.MT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 11 89 15 ?? ?? ?? ?? 8b 15 [0-0f] 8f 05 ?? ?? ?? ?? 8b 3d ?? ?? ?? ?? 89 15 [0-ac] 33 [0-ac] 8b d1 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 08 5f [0-01] 5d c3 } //1
		$a_00_1 = {69 00 6e 00 74 00 65 00 72 00 66 00 61 00 63 00 65 00 5c 00 7b 00 } //1 interface\{
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}