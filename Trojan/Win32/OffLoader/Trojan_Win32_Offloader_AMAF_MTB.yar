
rule Trojan_Win32_Offloader_AMAF_MTB{
	meta:
		description = "Trojan:Win32/Offloader.AMAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 74 00 68 00 65 00 6f 00 72 00 79 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 6c 00 61 00 6d 00 2e 00 70 00 68 00 70 } //05 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 69 00 64 00 64 00 6c 00 65 00 63 00 61 00 72 00 72 00 69 00 61 00 67 00 65 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 6c 00 61 00 6d 00 2e 00 70 00 68 00 70 } //01 00 
		$a_01_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 } //01 00 
		$a_01_3 = {72 00 65 00 73 00 74 00 61 00 72 00 74 00 20 00 74 00 68 00 65 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 6e 00 6f 00 77 00 } //01 00  restart the computer now
		$a_01_4 = {59 00 65 00 73 00 2c 00 20 00 49 00 20 00 77 00 6f 00 75 00 6c 00 64 00 20 00 6c 00 69 00 6b 00 65 00 20 00 74 00 6f 00 20 00 76 00 69 00 65 00 77 00 20 00 74 00 68 00 65 00 20 00 52 00 45 00 41 00 44 00 4d 00 45 00 20 00 66 00 69 00 6c 00 65 00 } //00 00  Yes, I would like to view the README file
	condition:
		any of ($a_*)
 
}