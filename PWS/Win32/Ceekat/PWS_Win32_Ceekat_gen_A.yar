
rule PWS_Win32_Ceekat_gen_A{
	meta:
		description = "PWS:Win32/Ceekat.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 02 6a 00 6a fc (53|56) e8 ?? ?? ?? ?? 6a 00 8d 45 ?? 50 6a 04 90 03 02 02 53 56 56 53 e8 ?? ?? ?? ?? 81 (|) 33 36 ?? ?? ?? ?? 6a 00 (53|56) e8 } //1
		$a_03_1 = {6a 02 6a 00 6a fc (53|56) e8 ?? ?? ?? ?? 6a 00 8d 45 ?? 50 6a 04 8d 45 ?? 50 (53|56) e8 ?? ?? ?? ?? 81 75 ?? ?? ?? ?? ?? 6a 00 (53|56) e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}