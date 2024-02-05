
rule Trojan_Win32_Netvat_E{
	meta:
		description = "Trojan:Win32/Netvat.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 76 74 2d 4e 65 74 } //01 00 
		$a_01_1 = {43 6f 6d 20 49 6e 66 72 61 73 74 72 75 63 74 75 72 65 } //01 00 
		$a_01_2 = {25 73 5c 76 76 70 76 73 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}