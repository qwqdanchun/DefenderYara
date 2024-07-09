
rule Trojan_Win32_Tofsee_GB_MTB{
	meta:
		description = "Trojan:Win32/Tofsee.GB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {51 6a 00 ff 15 ?? ?? ?? ?? 85 f6 78 ?? e8 ?? ?? ?? ?? 30 04 3e 4e 79 ?? 8b 4d fc 5f 5e 33 cd 5b e8 ?? ?? ?? ?? 8b e5 5d c3 } //1
		$a_02_1 = {6a 00 6a 00 6a 00 ff 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 0f b6 b0 ?? ?? ?? ?? 0f b6 c3 03 f0 81 e6 ff 00 00 00 81 3d ?? ?? ?? ?? 81 0c 00 00 75 ?? 6a 00 6a 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}