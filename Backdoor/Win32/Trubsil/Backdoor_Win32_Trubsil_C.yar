
rule Backdoor_Win32_Trubsil_C{
	meta:
		description = "Backdoor:Win32/Trubsil.C,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 69 6c 65 6e 74 5f 53 4d 54 50 5f 42 72 75 74 65 72 } //0a 00  Silent_SMTP_Bruter
		$a_01_1 = {53 00 70 00 66 00 75 00 77 00 62 00 72 00 66 00 5c 00 4e 00 69 00 64 00 72 00 70 00 73 00 70 00 66 00 75 00 5c 00 58 00 69 00 6f 00 64 00 70 00 77 00 74 00 5c 00 44 00 75 00 73 00 72 00 66 00 6e 00 75 00 56 00 66 00 72 00 74 00 69 00 70 00 6e 00 5d 00 52 00 76 00 6e 00 } //01 00  Spfuwbrf\Nidrpspfu\Xiodpwt\DusrfnuVfrtipn]Rvn
		$a_01_2 = {63 00 68 00 65 00 63 00 6b 00 72 00 65 00 73 00 2e 00 70 00 68 00 70 00 } //01 00  checkres.php
		$a_01_3 = {62 00 72 00 75 00 74 00 65 00 72 00 65 00 73 00 2e 00 70 00 68 00 70 00 } //01 00  bruteres.php
		$a_01_4 = {65 00 6d 00 61 00 69 00 6c 00 63 00 68 00 65 00 63 00 6b 00 72 00 65 00 73 00 2e 00 70 00 68 00 70 00 } //01 00  emailcheckres.php
		$a_01_5 = {7b 00 64 00 6f 00 6d 00 61 00 69 00 6e 00 63 00 75 00 74 00 7d 00 } //00 00  {domaincut}
		$a_00_6 = {7e 15 00 00 46 70 f6 10 4c ad 2d b8 } //f2 5a 
	condition:
		any of ($a_*)
 
}