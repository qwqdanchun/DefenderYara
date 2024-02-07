
rule Ransom_Win32_Nemty_PJ_MTB{
	meta:
		description = "Ransom:Win32/Nemty.PJ!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 4e 00 45 00 50 00 48 00 49 00 4c 00 49 00 4d 00 } //01 00  .NEPHILIM
		$a_01_1 = {4e 00 45 00 50 00 48 00 49 00 4c 00 49 00 4d 00 2d 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 74 00 78 00 74 00 } //01 00  NEPHILIM-DECRYPT.txt
		$a_01_2 = {2e 00 65 00 78 00 65 00 00 00 00 00 2e 00 6c 00 6f 00 67 00 00 00 00 00 2e 00 63 00 61 00 62 00 00 00 00 00 2e 00 63 00 6d 00 64 00 00 00 00 00 2e 00 63 00 6f 00 6d 00 00 00 00 00 2e 00 63 00 70 00 6c 00 } //01 00 
		$a_01_3 = {53 79 73 74 65 6d 46 75 6e 63 74 69 6f 6e 30 33 36 } //01 00  SystemFunction036
		$a_01_4 = {50 61 74 68 46 69 6e 64 45 78 74 65 6e 73 69 6f 6e 57 } //00 00  PathFindExtensionW
	condition:
		any of ($a_*)
 
}