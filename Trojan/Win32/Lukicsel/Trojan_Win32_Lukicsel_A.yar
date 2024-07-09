
rule Trojan_Win32_Lukicsel_A{
	meta:
		description = "Trojan:Win32/Lukicsel.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {50 6a 00 6a 10 e8 ?? ?? ?? ?? 8b d8 85 db 74 ?? 6a 00 6a 00 8b 44 24 ?? 50 8b 44 24 ?? 50 53 e8 ?? ?? ?? ?? 68 e8 03 00 00 e8 ?? ?? ?? ?? 6a 00 68 80 00 00 00 6a 03 6a 00 6a 00 68 00 00 00 c0 ?? e8 ?? ?? ?? ?? 83 f8 ff 74 } //1
		$a_03_1 = {74 50 6a 00 8d 45 f0 50 6a 04 8b 45 08 50 56 e8 ?? ?? ?? ?? 6a 00 8d 45 f0 50 6a 04 8b 45 fc 50 56 e8 } //1
		$a_03_2 = {74 2a 8b 04 24 50 6a 00 6a 10 e8 ?? ?? ?? ?? 8b d8 85 db 74 11 6a 00 6a 00 6a 00 8b 44 24 10 50 53 e8 ?? ?? ?? ?? 53 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}