
rule Trojan_Win32_Camec_gen_B{
	meta:
		description = "Trojan:Win32/Camec.gen!B,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {36 00 32 00 36 00 35 00 35 00 36 00 34 00 37 00 35 00 43 00 34 00 34 00 34 00 31 00 31 00 38 00 36 00 36 00 35 00 44 00 35 00 36 00 35 00 34 00 35 00 44 00 } //1 626556475C444118665D56545D
		$a_01_1 = {37 00 44 00 37 00 44 00 37 00 30 00 36 00 43 00 36 00 41 00 37 00 38 00 37 00 41 00 37 00 35 00 37 00 34 00 37 00 39 00 36 00 43 00 37 00 35 00 37 00 30 00 37 00 35 00 37 00 30 00 37 00 31 00 } //1 7D7D706C6A787A7574796C7570757071
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}