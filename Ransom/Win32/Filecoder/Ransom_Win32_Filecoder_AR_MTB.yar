
rule Ransom_Win32_Filecoder_AR_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 06 00 00 0a 00 "
		
	strings :
		$a_81_0 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //0a 00  vssadmin delete shadows /all /quiet
		$a_81_1 = {5c 52 45 53 54 4f 52 45 5f 44 4c 4c 5f 46 49 4c 45 53 2e 48 54 4d 4c } //0a 00  \RESTORE_DLL_FILES.HTML
		$a_81_2 = {5c 64 65 6c 65 74 65 2e 62 61 74 } //01 00  \delete.bat
		$a_81_3 = {54 68 72 65 61 74 45 78 70 65 72 74 20 53 75 63 6b 73 21 } //01 00  ThreatExpert Sucks!
		$a_81_4 = {22 20 67 6f 74 6f 20 52 65 70 65 61 74 } //01 00  " goto Repeat
		$a_81_5 = {52 61 6e 73 6f 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //00 00  Ransom.Properties.Resources
		$a_00_6 = {7e 15 00 00 de 5e d7 9d 73 a6 be dc 55 f0 e9 58 6f d6 f4 b5 00 } //00 00 
	condition:
		any of ($a_*)
 
}