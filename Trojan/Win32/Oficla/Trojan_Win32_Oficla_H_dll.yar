
rule Trojan_Win32_Oficla_H_dll{
	meta:
		description = "Trojan:Win32/Oficla.H!dll,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 6e 74 72 6f 2e 64 6c 6c 00 44 6c 6c 4d 61 69 6e 00 } //01 00 
		$a_01_1 = {99 ef 54 12 c6 67 ff 5f 45 90 78 90 f5 34 98 11 f1 9b 20 62 fc 48 d0 } //01 00 
		$a_02_2 = {55 89 e5 83 ec 18 8d 45 ff c6 45 ff 00 89 04 24 e8 90 01 04 83 ec 04 c9 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}