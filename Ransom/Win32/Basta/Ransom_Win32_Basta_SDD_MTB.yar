
rule Ransom_Win32_Basta_SDD_MTB{
	meta:
		description = "Ransom:Win32/Basta.SDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 75 08 e9 ?? ?? ?? ?? d1 e0 e9 ?? ?? ?? ?? 04 ?? e9 ?? ?? ?? ?? 5e e9 ?? ?? ?? ?? 8b ec e9 ?? ?? ?? ?? 32 02 e9 ?? ?? ?? ?? c9 e9 ?? ?? ?? ?? 6a 01 e9 ?? ?? ?? ?? 68 ?? ?? ?? ?? e9 ?? ?? ?? ?? 8b 36 } //1
		$a_00_1 = {56 69 73 69 62 6c 65 45 6e 74 72 79 } //1 VisibleEntry
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}