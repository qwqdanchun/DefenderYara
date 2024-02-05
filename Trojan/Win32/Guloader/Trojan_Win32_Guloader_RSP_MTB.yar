
rule Trojan_Win32_Guloader_RSP_MTB{
	meta:
		description = "Trojan:Win32/Guloader.RSP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 00 6f 00 72 00 65 00 6f 00 67 00 72 00 61 00 66 00 65 00 72 00 65 00 6e 00 64 00 65 00 73 00 } //01 00 
		$a_01_1 = {4b 00 61 00 6c 00 69 00 62 00 65 00 72 00 62 00 6f 00 72 00 } //01 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 56 00 65 00 6b 00 73 00 6c 00 65 00 6e 00 64 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}