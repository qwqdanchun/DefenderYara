
rule Ransom_MSIL_Crypute_PA_MTB{
	meta:
		description = "Ransom:MSIL/Crypute.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {72 61 6e 73 6f 6d 77 61 72 65 2e 90 02 20 2e 72 65 73 6f 75 72 63 65 73 90 00 } //01 00 
		$a_01_1 = {24 32 64 34 65 32 32 65 35 2d 38 64 38 36 2d 34 37 38 32 2d 62 30 62 37 2d 35 35 39 38 36 32 64 31 33 35 32 34 } //01 00  $2d4e22e5-8d86-4782-b0b7-559862d13524
		$a_01_2 = {53 00 61 00 68 00 65 00 72 00 20 00 42 00 6c 00 75 00 65 00 20 00 45 00 61 00 67 00 6c 00 65 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //00 00  Saher Blue Eagle Ransomware.exe
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_Crypute_PA_MTB_2{
	meta:
		description = "Ransom:MSIL/Crypute.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 61 00 63 00 6b 00 65 00 72 00 32 00 } //01 00  hacker2
		$a_01_1 = {2e 00 66 00 75 00 63 00 6b 00 65 00 64 00 } //01 00  .fucked
		$a_01_2 = {46 00 75 00 63 00 6b 00 74 00 68 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  FucktheSystem
		$a_01_3 = {59 00 4f 00 55 00 20 00 41 00 52 00 45 00 20 00 48 00 41 00 43 00 4b 00 45 00 44 00 20 00 57 00 49 00 54 00 48 00 20 00 43 00 4f 00 42 00 52 00 41 00 20 00 52 00 41 00 4e 00 53 00 4f 00 4d 00 57 00 41 00 52 00 45 00 } //01 00  YOU ARE HACKED WITH COBRA RANSOMWARE
		$a_03_4 = {5c 43 4f 42 52 41 5c 43 4f 42 52 41 5c 90 02 20 5c 43 4f 42 52 41 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}