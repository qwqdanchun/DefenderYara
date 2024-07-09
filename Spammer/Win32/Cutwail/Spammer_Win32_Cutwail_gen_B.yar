
rule Spammer_Win32_Cutwail_gen_B{
	meta:
		description = "Spammer:Win32/Cutwail.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {59 6a 05 a3 ?? ?? ?? 13 a3 ?? ?? ?? 13 a3 ?? ?? ?? 13 58 6a 1c 6a 00 68 ?? ?? 15 13 c7 05 } //1
		$a_02_1 = {74 07 80 0d ?? ?? ?? 13 04 6a 05 58 6a 20 56 68 ?? ?? ?? 13 c7 05 ?? ?? ?? 13 ?? ?? 00 00 c7 05 } //1
		$a_02_2 = {74 07 80 0d ?? ?? ?? 13 04 8b 0d ?? ?? ?? 14 68 ?? ?? ?? ?? 56 68 ?? ?? ?? 13 c7 05 ?? ?? ?? 13 ?? ?? 00 00 e8 ?? ?? 00 00 8b 0d } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=1
 
}