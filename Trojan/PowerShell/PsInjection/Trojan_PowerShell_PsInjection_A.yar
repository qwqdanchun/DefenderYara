
rule Trojan_PowerShell_PsInjection_A{
	meta:
		description = "Trojan:PowerShell/PsInjection.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {2d 00 70 00 65 00 62 00 79 00 74 00 65 00 73 00 20 00 90 02 15 20 00 2d 00 66 00 75 00 6e 00 63 00 72 00 65 00 74 00 75 00 72 00 6e 00 74 00 79 00 70 00 65 00 20 00 77 00 73 00 74 00 72 00 69 00 6e 00 67 00 20 00 2d 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 6e 00 61 00 6d 00 65 00 90 00 } //01 00 
		$a_02_1 = {2d 00 70 00 65 00 62 00 79 00 74 00 65 00 73 00 20 00 90 02 15 20 00 2d 00 70 00 72 00 6f 00 63 00 6e 00 61 00 6d 00 65 00 20 00 90 02 15 20 00 2d 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 74 00 61 00 72 00 67 00 65 00 74 00 2e 00 6c 00 6f 00 63 00 61 00 6c 00 90 00 } //01 00 
		$a_00_2 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 76 00 65 00 50 00 45 00 49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //00 00  Invoke-ReflectivePEInjection
	condition:
		any of ($a_*)
 
}