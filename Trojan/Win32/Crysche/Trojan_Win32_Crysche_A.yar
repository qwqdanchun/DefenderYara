
rule Trojan_Win32_Crysche_A{
	meta:
		description = "Trojan:Win32/Crysche.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 72 69 74 69 63 61 6c 20 53 79 73 74 65 6d 20 43 68 65 63 6b } //01 00  Critical System Check
		$a_00_1 = {5c 65 73 63 68 65 2e 74 6d 70 } //01 00  \esche.tmp
		$a_00_2 = {2f 6d 63 61 73 68 2f } //01 00  /mcash/
		$a_00_3 = {63 68 65 63 6b 2e 70 68 70 3f 6d 61 63 3d } //01 00  check.php?mac=
		$a_01_4 = {2a d5 8b 14 ab a2 ce 11 b1 1f 00 aa 00 53 05 03 } //00 00 
	condition:
		any of ($a_*)
 
}