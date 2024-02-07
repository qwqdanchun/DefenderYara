
rule Trojan_Win32_Qbot_BB_MTB{
	meta:
		description = "Trojan:Win32/Qbot.BB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_01_1 = {42 58 4a 62 54 5a 65 64 58 } //01 00  BXJbTZedX
		$a_01_2 = {42 5a 35 64 57 6a } //01 00  BZ5dWj
		$a_01_3 = {42 6e 53 33 5a 39 6b } //01 00  BnS3Z9k
		$a_01_4 = {43 4d 54 6a 77 56 65 } //01 00  CMTjwVe
		$a_01_5 = {44 57 55 61 63 51 31 67 62 } //00 00  DWUacQ1gb
	condition:
		any of ($a_*)
 
}