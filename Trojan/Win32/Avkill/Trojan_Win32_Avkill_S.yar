
rule Trojan_Win32_Avkill_S{
	meta:
		description = "Trojan:Win32/Avkill.S,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 6a 63 74 36 00 50 72 6f 6a 65 63 74 31 00 00 50 72 6f 6a 65 63 74 31 } //01 00 
		$a_01_1 = {70 00 6a 00 63 00 74 00 36 00 78 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  pjct6x\Project1.vbp
		$a_01_2 = {4b 00 65 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 6f 00 72 00 54 00 61 00 62 00 6c 00 65 00 } //01 00  KeServiceDescriptorTable
		$a_01_3 = {15 00 00 00 5a 77 53 79 73 74 65 6d 44 65 62 75 67 43 6f 6e 74 72 6f 6c } //00 00 
	condition:
		any of ($a_*)
 
}