
rule Ransom_Win32_Sodinokibi_S_MSR{
	meta:
		description = "Ransom:Win32/Sodinokibi.S!MSR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {51 51 42 73 41 47 77 41 49 41 42 76 41 47 59 41 49 41 42 35 41 47 38 41 64 51 42 79 41 43 41 41 5a 67 42 70 41 47 77 41 5a 51 42 7a 41 43 41 41 59 51 42 79 41 47 55 41 49 41 42 6c 41 47 34 41 59 77 42 79 41 48 6b 41 63 41 42 30 41 47 55 41 5a 41 41 68 41 41 30 } //01 00 
		$a_01_1 = {74 6f 72 20 62 72 6f 77 73 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}