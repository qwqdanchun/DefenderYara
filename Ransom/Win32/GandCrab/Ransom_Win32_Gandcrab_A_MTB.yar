
rule Ransom_Win32_Gandcrab_A_MTB{
	meta:
		description = "Ransom:Win32/Gandcrab.A!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 41 00 46 00 49 00 54 00 45 00 48 00 55 00 56 00 55 00 } //01 00  CAFITEHUVU
		$a_01_1 = {4b 00 49 00 52 00 49 00 56 00 41 00 57 00 4f 00 57 00 4f 00 59 00 49 00 54 00 41 00 4d 00 41 00 50 00 4f 00 48 00 41 00 } //01 00  KIRIVAWOWOYITAMAPOHA
		$a_01_2 = {4d 00 50 00 50 00 58 00 4c 00 } //01 00  MPPXL
		$a_01_3 = {4d 00 55 00 57 00 45 00 4c 00 45 00 5a 00 4f 00 52 00 4f 00 } //00 00  MUWELEZORO
		$a_01_4 = {00 5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}