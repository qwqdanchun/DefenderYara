
rule Ransom_Win32_Parepise_A{
	meta:
		description = "Ransom:Win32/Parepise.A,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 68 00 6f 00 72 00 73 00 65 00 64 00 65 00 61 00 6c 00 00 00 00 00 25 00 73 00 25 00 73 00 00 00 00 00 5f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 69 00 6e 00 67 00 5f 00 2e 00 70 00 6e 00 67 00 00 00 00 00 25 00 73 00 5c 00 2a 00 00 00 00 00 25 00 73 00 5c 00 25 00 73 00 00 00 2e 00 00 00 2e 00 2e 00 00 00 00 00 23 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}