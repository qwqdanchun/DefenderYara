
rule Virus_Win32_Triusor_dam{
	meta:
		description = "Virus:Win32/Triusor!dam,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8d bc 24 85 00 00 00 88 9c 24 84 00 00 00 68 00 04 00 00 f3 ab 66 ab aa 8d 84 24 88 00 00 00 c7 44 24 1c 00 00 00 00 50 53 89 5c 24 20 ff 15 90 01 04 68 04 01 00 00 68 90 01 04 ff 15 90 01 04 8d 8c 24 84 00 00 00 51 ff 15 90 01 04 a3 90 01 04 8b 48 3c 03 c8 89 0d 90 01 04 81 39 50 45 00 00 0f 85 90 01 04 33 d2 55 66 8b 51 14 56 8b f2 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}