
rule Trojan_Win32_Emotetcrypt_JL_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.JL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 54 47 65 73 74 75 72 65 73 2e 64 6c 6c } //01 00 
		$a_01_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_01_2 = {7a 41 29 39 24 31 56 75 3c 79 78 40 23 59 4c 6a 50 30 70 28 23 25 50 3e 50 4a 78 } //00 00 
	condition:
		any of ($a_*)
 
}