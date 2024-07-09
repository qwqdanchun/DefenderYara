
rule VirTool_BAT_Asemlod_B{
	meta:
		description = "VirTool:BAT/Asemlod.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 07 19 5a 18 58 12 ?? 28 ?? ?? ?? 06 9c 06 07 19 5a 17 58 12 ?? 28 ?? ?? ?? 06 9c 06 07 19 5a 12 ?? 28 ?? ?? ?? 06 9c 07 17 58 } //1
		$a_03_1 = {19 d8 18 d6 12 ?? 28 ?? ?? ?? ?? 9c 09 11 ?? 19 d8 17 d6 12 ?? 28 ?? ?? ?? ?? 9c 09 11 ?? 19 d8 12 ?? 28 ?? ?? ?? ?? 9c 11 ?? 17 d6 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}