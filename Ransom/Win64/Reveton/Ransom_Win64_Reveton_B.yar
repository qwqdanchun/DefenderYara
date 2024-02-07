
rule Ransom_Win64_Reveton_B{
	meta:
		description = "Ransom:Win64/Reveton.B,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {83 f8 3c 72 62 48 8d 8d 90 01 04 c7 c2 00 00 00 02 4d 33 c0 44 8b 8d 90 01 04 48 8b 85 90 00 } //01 00 
		$a_01_1 = {77 00 6f 00 72 00 6b 00 } //01 00  work
		$a_00_2 = {4e 00 74 00 43 00 72 00 65 00 61 00 74 00 65 00 54 00 68 00 72 00 65 00 61 00 64 00 45 00 78 00 } //01 00  NtCreateThreadEx
		$a_01_3 = {53 00 56 00 43 00 48 00 4f 00 53 00 54 00 2e 00 45 00 58 00 45 00 } //01 00  SVCHOST.EXE
		$a_00_4 = {2e 00 63 00 70 00 70 00 } //00 00  .cpp
		$a_00_5 = {7e 15 00 00 6c e5 fb 98 b0 51 04 } //c5 3a 
	condition:
		any of ($a_*)
 
}