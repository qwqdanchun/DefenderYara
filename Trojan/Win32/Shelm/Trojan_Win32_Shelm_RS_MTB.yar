
rule Trojan_Win32_Shelm_RS_MTB{
	meta:
		description = "Trojan:Win32/Shelm.RS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 78 62 76 57 71 62 53 74 28 29 0a 77 58 4e 69 77 57 44 53 56 28 29 0a 4a 64 4f 64 61 6b 44 6d 69 28 29 0a 6d 47 43 79 4f 72 59 71 70 28 29 } //01 00 
		$a_01_1 = {28 00 20 00 52 00 75 00 6e 00 57 00 61 00 69 00 74 00 20 00 3c 00 20 00 46 00 69 00 6c 00 65 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 29 00 } //01 00  ( RunWait < FileDelete )
		$a_01_2 = {28 00 20 00 53 00 74 00 72 00 4c 00 65 00 6e 00 20 00 3c 00 20 00 52 00 61 00 6e 00 64 00 6f 00 6d 00 20 00 29 00 } //00 00  ( StrLen < Random )
	condition:
		any of ($a_*)
 
}