
rule Ransom_MSIL_Phobos_PA_MTB{
	meta:
		description = "Ransom:MSIL/Phobos.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {21 00 52 00 45 00 41 00 44 00 4d 00 45 00 21 00 2e 00 68 00 74 00 61 00 } //01 00  !README!.hta
		$a_01_1 = {53 00 68 00 61 00 64 00 6f 00 77 00 6f 00 66 00 64 00 65 00 61 00 74 00 68 00 } //01 00  Shadowofdeath
		$a_01_2 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //01 00  All your files have been encrypted!
		$a_01_3 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 74 00 61 00 74 00 65 00 62 00 61 00 63 00 6b 00 75 00 70 00 20 00 2d 00 64 00 65 00 6c 00 65 00 74 00 65 00 6f 00 6c 00 64 00 65 00 73 00 74 00 } //00 00  wbadmin delete systemstatebackup -deleteoldest
	condition:
		any of ($a_*)
 
}