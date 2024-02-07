
rule Trojan_Win32_Vbot_I{
	meta:
		description = "Trojan:Win32/Vbot.I,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 } //01 00  \Mozilla\Firefox\Profiles
		$a_00_1 = {5c 00 64 00 77 00 6f 00 6e 00 65 00 62 00 6c 00 61 00 63 00 6b 00 2e 00 64 00 61 00 74 00 } //01 00  \dwoneblack.dat
		$a_00_2 = {5c 00 50 00 68 00 61 00 72 00 6d 00 20 00 56 00 42 00 } //01 00  \Pharm VB
		$a_02_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 90 02 10 73 00 62 00 74 00 68 00 6f 00 73 00 74 00 90 00 } //01 00 
		$a_00_4 = {2f 00 63 00 6f 00 6e 00 74 00 61 00 67 00 65 00 6d 00 2e 00 70 00 68 00 70 00 } //01 00  /contagem.php
		$a_00_5 = {66 00 75 00 63 00 6b 00 65 00 72 00 } //00 00  fucker
	condition:
		any of ($a_*)
 
}