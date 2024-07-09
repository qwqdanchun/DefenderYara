
rule Ransom_Win64_Magniber_gen_A{
	meta:
		description = "Ransom:Win64/Magniber.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {56 48 8b f4 48 83 e4 f0 48 83 ec 20 e8 ?? ?? ?? ?? 48 8b e6 5e c3 [0-06] b8 ?? ?? 00 00 0f 05 c3 [0-06] b8 ?? ?? 00 00 0f 05 c3 } //1
		$a_00_1 = {77 00 69 00 6e 00 6e 00 74 00 00 00 2e 00 00 00 2e 00 2e 00 00 00 5c 00 00 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 68 00 74 00 6d 00 6c 00 00 00 } //1
		$a_00_2 = {3d 20 6e 65 77 20 41 72 72 61 79 28 } //1 = new Array(
		$a_00_3 = {66 72 6f 6d 43 68 61 72 43 6f 64 65 } //1 fromCharCode
		$a_03_4 = {e8 00 00 00 00 58 48 83 e8 05 48 2d ?? ?? ?? 00 c3 } //1
		$a_03_5 = {b9 4c 77 d6 07 e8 ?? ?? ?? ?? 48 8d [0-08] ff d0 b9 49 f7 02 78 4c 8b e0 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=5
 
}