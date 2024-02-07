
rule Trojan_Win32_Ragterneb_A{
	meta:
		description = "Trojan:Win32/Ragterneb.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 00 65 00 76 00 5c 00 5f 00 77 00 65 00 62 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 } //01 00  dev\_webbrowsers
		$a_00_1 = {26 00 62 00 6f 00 74 00 73 00 3d 00 } //01 00  &bots=
		$a_02_2 = {6c 00 6f 00 67 00 62 00 73 00 90 02 04 2e 00 70 00 68 00 70 00 3f 00 70 00 5f 00 63 00 6f 00 64 00 65 00 3d 00 90 00 } //01 00 
		$a_00_3 = {5c 00 75 00 73 00 65 00 72 00 69 00 64 00 2e 00 64 00 61 00 74 00 } //00 00  \userid.dat
	condition:
		any of ($a_*)
 
}