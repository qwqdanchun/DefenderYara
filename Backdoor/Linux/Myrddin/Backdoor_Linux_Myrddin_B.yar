
rule Backdoor_Linux_Myrddin_B{
	meta:
		description = "Backdoor:Linux/Myrddin.B,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_80_0 = {6d 65 72 6c 69 6e } //merlin  1
		$a_02_1 = {0f 10 00 0f 11 84 24 48 01 00 00 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b } //1
		$a_02_2 = {01 00 00 48 8b 0d ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 89 ?? ?? ?? ?? ?? ?? 48 8b } //1
		$a_02_3 = {48 85 c9 0f 85 ?? 00 00 00 } //1
	condition:
		((#a_80_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}