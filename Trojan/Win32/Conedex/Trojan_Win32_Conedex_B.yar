
rule Trojan_Win32_Conedex_B{
	meta:
		description = "Trojan:Win32/Conedex.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 6f 73 74 2e 69 6e 64 65 78 4f 66 28 27 } //01 00 
		$a_01_1 = {3c 64 61 74 3e 3c 6a 73 74 3e } //00 00 
	condition:
		any of ($a_*)
 
}