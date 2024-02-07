
rule Trojan_BAT_Formbook_RPM_MTB{
	meta:
		description = "Trojan:BAT/Formbook.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 38 00 2e 00 31 00 35 00 39 00 2e 00 35 00 39 00 2e 00 32 00 35 00 33 00 } //01 00  18.159.59.253
		$a_01_1 = {4c 00 6f 00 6f 00 67 00 66 00 72 00 63 00 79 00 2e 00 6c 00 6f 00 67 00 } //01 00  Loogfrcy.log
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_01_3 = {44 00 69 00 70 00 6d 00 44 00 6f 00 77 00 44 00 69 00 70 00 6d 00 6e 00 6c 00 44 00 69 00 70 00 6d 00 6f 00 61 00 64 00 44 00 44 00 69 00 70 00 6d 00 61 00 74 00 61 00 44 00 69 00 70 00 6d 00 } //01 00  DipmDowDipmnlDipmoadDDipmataDipm
		$a_01_4 = {2d 00 65 00 6e 00 63 00 20 00 57 00 77 00 42 00 55 00 41 00 47 00 67 00 41 00 63 00 67 00 42 00 6c 00 41 00 47 00 45 00 41 00 } //00 00  -enc WwBUAGgAcgBlAGEA
	condition:
		any of ($a_*)
 
}