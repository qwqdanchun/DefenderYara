
rule Trojan_Win32_Dishigy_gen_A{
	meta:
		description = "Trojan:Win32/Dishigy.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 40 1c c7 80 c8 01 00 00 db 05 00 00 8b 45 f8 83 c0 34 } //01 00 
		$a_03_1 = {69 45 f8 e7 03 00 00 50 e8 90 01 04 e9 90 01 04 b2 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}