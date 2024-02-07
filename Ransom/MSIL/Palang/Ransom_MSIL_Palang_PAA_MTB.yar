
rule Ransom_MSIL_Palang_PAA_MTB{
	meta:
		description = "Ransom:MSIL/Palang.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 07 00 00 0a 00 "
		
	strings :
		$a_81_0 = {77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 79 73 74 65 6d 73 74 61 74 65 62 61 63 6b 75 70 20 2d 64 65 6c 65 74 65 6f 6c 64 65 73 74 } //0a 00  wbadmin delete systemstatebackup -deleteoldest
		$a_81_1 = {77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 62 61 63 6b 75 70 20 2d 64 65 6c 65 74 65 6f 6c 64 65 73 74 } //01 00  wbadmin delete backup -deleteoldest
		$a_81_2 = {66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //01 00  files have been encrypted
		$a_81_3 = {53 65 6c 65 63 74 20 50 72 6f 63 65 73 73 6f 72 49 64 20 46 72 6f 6d 20 57 69 6e 33 32 5f 70 72 6f 63 65 73 73 6f 72 } //01 00  Select ProcessorId From Win32_processor
		$a_81_4 = {53 4f 46 54 57 41 52 45 5c 45 43 43 54 32 } //01 00  SOFTWARE\ECCT2
		$a_81_5 = {21 52 45 41 44 4d 45 21 } //01 00  !README!
		$a_81_6 = {4d 72 50 61 6c 61 6e 67 40 43 6f 63 6b 2e 6c 69 } //00 00  MrPalang@Cock.li
	condition:
		any of ($a_*)
 
}