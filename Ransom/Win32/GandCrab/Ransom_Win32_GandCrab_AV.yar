
rule Ransom_Win32_GandCrab_AV{
	meta:
		description = "Ransom:Win32/GandCrab.AV,SIGNATURE_TYPE_PEHSTR_EXT,28 00 28 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 4c 58 66 a3 18 50 47 00 33 c0 c7 05 90 01 04 33 32 2e 64 66 c7 05 90 01 04 6c 6c 88 1d 90 01 04 66 a3 90 00 } //20
		$a_03_1 = {56 6a 64 6a 00 ff 15 90 01 04 8b f0 68 90 01 04 56 ff 15 90 01 04 c6 46 90 01 02 8b c6 5e c3 90 00 } //20
	condition:
		((#a_03_0  & 1)*20+(#a_03_1  & 1)*20) >=40
 
}