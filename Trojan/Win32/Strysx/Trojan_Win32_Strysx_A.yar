
rule Trojan_Win32_Strysx_A{
	meta:
		description = "Trojan:Win32/Strysx.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 ff 00 00 00 6a 06 6a 03 68 90 01 01 da 40 00 ff 15 90 01 02 40 00 83 f8 ff a3 90 01 02 41 00 74 6c 53 50 90 00 } //01 00 
		$a_02_1 = {8d 7c 24 10 e8 90 01 01 ff ff ff 8d 44 24 18 50 8b cf e8 90 01 01 fe ff ff 8b 70 04 59 6a 00 8d 44 24 10 50 56 e8 90 01 02 00 00 59 40 50 56 ff 35 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}