
rule Ransom_Win32_Avaddon_PB_MTB{
	meta:
		description = "Ransom:Win32/Avaddon.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_02_0 = {c1 e0 02 89 90 02 05 8b 90 02 05 83 e9 04 89 90 02 05 c7 90 02 05 04 00 00 00 8b 90 02 05 c1 e2 02 89 90 02 05 8b 90 02 05 83 e8 04 89 90 02 05 c7 90 02 05 04 00 00 00 8b 90 02 05 c1 e1 02 89 90 02 05 8b 90 02 05 83 ea 04 89 90 02 05 c7 90 02 05 04 00 00 00 8b 90 02 05 c1 e0 02 89 90 02 05 8b 90 02 05 83 e9 04 90 00 } //1
		$a_02_1 = {b9 01 00 00 00 85 c9 0f 90 0a 70 00 8d 90 02 05 00 00 2b 90 02 05 03 90 02 05 a3 90 02 05 8b 90 02 05 81 e9 2d ad 00 00 89 90 02 05 8b 90 02 05 03 90 02 05 03 90 02 05 89 90 02 05 a1 90 02 05 2b 90 02 05 a3 90 00 } //2
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*2) >=3
 
}