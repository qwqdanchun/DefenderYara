
rule Trojan_Win32_NSISInject_FP_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 00 72 00 69 00 6e 00 67 00 73 00 6d 00 69 00 64 00 64 00 65 00 6c 00 65 00 74 00 73 00 34 00 30 00 5c 00 41 00 73 00 70 00 69 00 72 00 65 00 72 00 69 00 6e 00 67 00 65 00 72 00 6e 00 65 00 73 00 2e 00 53 00 63 00 72 00 } //01 00  Nringsmiddelets40\Aspireringernes.Scr
		$a_01_1 = {53 00 76 00 72 00 76 00 67 00 74 00 73 00 6b 00 6c 00 61 00 73 00 73 00 65 00 73 00 } //01 00  Svrvgtsklasses
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 42 00 69 00 6f 00 74 00 65 00 6b 00 6e 00 69 00 6b 00 65 00 72 00 65 00 72 00 6e 00 65 00 5c 00 41 00 6e 00 63 00 65 00 72 00 61 00 74 00 61 00 } //01 00  Software\Bioteknikererne\Ancerata
		$a_01_3 = {53 00 61 00 6c 00 72 00 65 00 74 00 73 00 } //01 00  Salrets
		$a_01_4 = {67 00 61 00 62 00 65 00 72 00 64 00 69 00 6e 00 65 00 2e 00 53 00 63 00 65 00 } //00 00  gaberdine.Sce
	condition:
		any of ($a_*)
 
}