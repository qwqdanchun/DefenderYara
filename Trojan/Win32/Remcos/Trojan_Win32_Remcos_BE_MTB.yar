
rule Trojan_Win32_Remcos_BE_MTB{
	meta:
		description = "Trojan:Win32/Remcos.BE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c1 01 89 4d 90 01 01 8b 55 90 01 01 3b 55 90 01 01 7d 90 01 01 e8 90 01 02 ff ff 89 45 90 01 01 8b 4d 90 01 01 03 4d 90 01 01 8a 55 90 01 01 88 11 eb 90 00 } //01 00 
		$a_03_1 = {65 c7 45 f8 90 01 04 c6 45 90 01 01 6c c6 45 90 01 01 6e c6 45 90 01 01 32 c6 45 90 01 01 6f c6 45 90 01 01 75 90 00 } //02 00 
		$a_03_2 = {55 8b ec 51 a1 90 01 04 8b 08 8b 15 90 01 04 8b 04 91 2d 90 01 03 00 89 45 fc 8b 0d 90 01 04 83 c1 01 89 0d 90 01 04 8b 45 fc 8b e5 5d c3 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}