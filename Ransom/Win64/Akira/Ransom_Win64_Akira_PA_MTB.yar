
rule Ransom_Win64_Akira_PA_MTB{
	meta:
		description = "Ransom:Win64/Akira.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 61 6b 69 72 61 } //01 00  .akira
		$a_01_1 = {61 6b 69 72 61 5f 72 65 61 64 6d 65 2e 74 78 74 } //00 00  akira_readme.txt
	condition:
		any of ($a_*)
 
}