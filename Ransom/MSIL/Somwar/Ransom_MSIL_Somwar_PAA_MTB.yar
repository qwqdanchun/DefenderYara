
rule Ransom_MSIL_Somwar_PAA_MTB{
	meta:
		description = "Ransom:MSIL/Somwar.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 00 6d 00 77 00 61 00 72 00 65 00 } //01 00  vmware
		$a_01_1 = {4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 } //01 00  Kaspersky
		$a_01_2 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 42 00 6f 00 78 00 } //01 00  VirtualBox
		$a_01_3 = {44 65 74 65 63 74 41 6e 74 69 56 69 72 75 73 } //01 00  DetectAntiVirus
		$a_01_4 = {4d 00 63 00 41 00 66 00 65 00 65 00 20 00 56 00 69 00 72 00 75 00 73 00 53 00 63 00 61 00 6e 00 } //01 00  McAfee VirusScan
		$a_01_5 = {65 78 63 6c 75 64 65 64 5f 65 78 74 65 6e 73 69 6f 6e 73 } //01 00  excluded_extensions
		$a_01_6 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  Select * from Win32_ComputerSystem
		$a_81_7 = {41 6c 6c 20 79 6f 75 20 66 69 6c 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 20 62 79 20 61 20 72 61 6e 73 6f 6d 77 61 72 65 2e } //00 00  All you filles have been encrypted by a ransomware.
	condition:
		any of ($a_*)
 
}