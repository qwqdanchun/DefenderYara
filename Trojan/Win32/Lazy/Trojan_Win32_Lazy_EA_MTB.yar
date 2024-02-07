
rule Trojan_Win32_Lazy_EA_MTB{
	meta:
		description = "Trojan:Win32/Lazy.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 66 6f 77 6b 6d 73 67 } //01 00  afowkmsg
		$a_01_1 = {72 74 65 76 69 61 77 7a 70 6a } //01 00  rteviawzpj
		$a_01_2 = {6a 69 68 64 6b 63 } //01 00  jihdkc
		$a_01_3 = {63 6d 6b 62 6f 76 64 } //01 00  cmkbovd
		$a_01_4 = {70 66 69 61 79 6d 63 6b 77 78 7a } //00 00  pfiaymckwxz
	condition:
		any of ($a_*)
 
}