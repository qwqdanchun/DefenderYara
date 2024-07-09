
rule Trojan_Win32_LokiBot_DC_MTB{
	meta:
		description = "Trojan:Win32/LokiBot.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 06 8a 80 ?? ?? ?? ?? a2 ?? ?? ?? ?? 8b c7 03 05 ?? ?? ?? ?? 89 06 90 05 10 01 90 8b 06 a3 ?? ?? ?? ?? 90 05 10 01 90 b0 33 90 05 10 01 90 32 05 ?? ?? ?? ?? 90 05 10 01 90 e8 ?? ?? ?? ?? 90 05 10 01 90 ff 05 ?? ?? ?? ?? 90 05 10 01 90 43 81 fb ?? ?? ?? ?? 75 } //4
		$a_03_1 = {bb 01 00 00 00 90 05 10 01 90 8b ?? 03 ?? 90 05 10 01 90 c6 ?? ?? 90 05 10 01 90 43 81 fb ?? ?? ?? ?? 75 } //1
		$a_03_2 = {33 c0 89 04 24 b8 ?? ?? ?? ?? 90 05 10 01 90 8b f7 03 f2 90 05 10 01 90 8a 08 90 05 10 01 90 80 f1 ec 90 05 10 01 90 88 0e 90 05 10 01 90 42 90 05 10 01 90 ff 04 24 40 81 3c 24 e5 5b 00 00 75 } //4
		$a_03_3 = {33 c0 a3 8c 0c 49 00 90 05 10 01 90 33 db 90 05 10 01 90 8b 06 90 05 10 01 90 03 05 ?? ?? ?? ?? 90 05 10 01 90 b2 d2 90 05 10 01 90 a3 ?? ?? ?? ?? 90 05 10 01 90 8b c3 90 05 10 01 90 8a 80 ?? ?? ?? ?? a2 ?? ?? ?? ?? 90 05 10 01 90 30 15 ?? ?? ?? ?? 90 05 10 01 90 8a 15 ?? ?? ?? ?? 90 05 10 01 90 8b c2 e8 ?? ?? ?? ?? 90 05 10 01 90 8b 06 90 05 10 01 90 40 89 06 90 05 10 01 90 43 81 fb ?? ?? ?? ?? 75 } //4
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*1+(#a_03_2  & 1)*4+(#a_03_3  & 1)*4) >=5
 
}