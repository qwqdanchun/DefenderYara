
rule Ransom_Win32_Royal_C_dha{
	meta:
		description = "Ransom:Win32/Royal.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 00 72 00 6f 00 79 00 61 00 6c 00 } //01 00  .royal
		$a_00_1 = {74 00 6f 00 72 00 20 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 } //01 00  tor browser
		$a_00_2 = {52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 54 00 58 00 54 00 } //01 00  README.TXT
		$a_00_3 = {24 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 7e 00 77 00 73 00 } //01 00  $windows.~ws
		$a_00_4 = {24 00 72 00 65 00 63 00 79 00 63 00 6c 00 65 00 2e 00 62 00 69 00 6e 00 } //01 00  $recycle.bin
		$a_01_5 = {45 4e 43 52 59 50 54 45 44 } //00 00  ENCRYPTED
	condition:
		any of ($a_*)
 
}