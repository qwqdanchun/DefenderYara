
rule Trojan_Win32_Stealer_G_bit{
	meta:
		description = "Trojan:Win32/Stealer.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c0 c7 05 90 01 04 6b 65 72 6e 68 90 01 04 c7 05 90 01 04 65 6c 33 32 c7 05 90 01 04 2e 64 6c 6c c6 05 90 01 04 00 c7 05 90 01 04 6b 00 65 00 c7 05 90 01 04 72 00 6e 00 c7 05 90 01 04 65 00 6c 00 c7 05 90 01 04 33 00 32 00 c7 05 90 01 04 2e 00 64 00 c7 05 90 01 04 6c 00 6c 00 66 a3 90 01 04 ff d3 90 00 } //01 00 
		$a_03_1 = {c1 e9 05 03 4c 24 90 01 01 c1 e0 04 03 44 24 90 01 01 33 c8 8b 44 24 90 01 01 03 44 24 90 01 01 6a 00 33 c8 29 4c 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}