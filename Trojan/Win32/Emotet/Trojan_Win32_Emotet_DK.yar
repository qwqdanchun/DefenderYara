
rule Trojan_Win32_Emotet_DK{
	meta:
		description = "Trojan:Win32/Emotet.DK,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 37 68 53 42 4d 65 51 65 49 66 6d 2e 70 64 62 } //00 00  O7hSBMeQeIfm.pdb
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_DK_2{
	meta:
		description = "Trojan:Win32/Emotet.DK,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {71 48 65 72 71 65 68 65 72 48 68 00 65 72 23 56 31 32 68 74 72 40 40 6a 47 65 00 72 6a 65 65 77 00 34 23 48 52 45 4e 45 } //01 00  䡱牥敱敨䡲h牥嘣㈱瑨䁲橀敇爀敪睥㐀䠣䕒䕎
		$a_01_1 = {68 00 77 00 72 00 4a 00 57 00 52 00 4a 00 45 00 72 00 00 00 6a 00 45 00 57 00 21 00 32 00 33 00 32 00 74 00 79 00 68 00 00 00 57 00 52 00 4a 00 40 00 23 00 54 00 59 00 48 00 45 00 52 00 6a 00 21 00 40 00 23 } //01 00 
		$a_01_2 = {74 77 65 72 6b 72 74 72 23 23 23 2e 70 64 62 } //01 00  twerkrtr###.pdb
		$a_01_3 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 53 00 50 00 52 00 65 00 76 00 69 00 65 00 77 00 2e 00 65 00 78 00 65 } //00 00 
	condition:
		any of ($a_*)
 
}