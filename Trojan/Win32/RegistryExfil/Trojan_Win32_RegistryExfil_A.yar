
rule Trojan_Win32_RegistryExfil_A{
	meta:
		description = "Trojan:Win32/RegistryExfil.A,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {72 00 65 00 67 00 2e 00 65 00 78 00 65 00 90 02 40 73 00 61 00 76 00 65 00 90 02 40 68 00 6b 00 6c 00 6d 00 5c 00 73 00 61 00 6d 00 90 00 } //0a 00 
		$a_02_1 = {72 00 65 00 67 00 2e 00 65 00 78 00 65 00 90 02 40 73 00 61 00 76 00 65 00 90 02 40 68 00 6b 00 6c 00 6d 00 5c 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 90 00 } //0a 00 
		$a_02_2 = {72 00 65 00 67 00 2e 00 65 00 78 00 65 00 90 02 40 73 00 61 00 76 00 65 00 90 02 40 68 00 6b 00 6c 00 6d 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}