
rule Ransom_MSIL_NoCry_PAA_MTB{
	meta:
		description = "Ransom:MSIL/NoCry.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {52 00 75 00 6e 00 90 02 02 63 00 6f 00 75 00 6e 00 74 00 2e 00 63 00 72 00 79 00 90 00 } //01 00 
		$a_01_1 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  Select * from Win32_ComputerSystem
		$a_01_2 = {46 00 69 00 6c 00 65 00 73 00 20 00 48 00 61 00 76 00 65 00 20 00 42 00 65 00 65 00 6e 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00  Files Have Been Encrypted
		$a_01_3 = {44 00 65 00 74 00 65 00 63 00 74 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 } //00 00  DetectVirtualMachine
	condition:
		any of ($a_*)
 
}