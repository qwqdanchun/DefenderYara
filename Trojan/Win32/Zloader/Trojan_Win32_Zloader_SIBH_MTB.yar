
rule Trojan_Win32_Zloader_SIBH_MTB{
	meta:
		description = "Trojan:Win32/Zloader.SIBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {31 db 31 ff 89 55 90 01 01 89 ce e8 90 01 04 89 75 90 01 01 89 c1 0f b6 36 d3 e7 01 fe e8 90 01 04 f7 d0 50 56 e8 90 01 04 83 c4 08 21 f0 74 90 01 01 c1 e8 90 01 01 89 c7 89 45 90 01 01 b8 90 01 04 f7 d7 21 f7 50 56 e8 90 01 04 83 c4 08 81 ce 90 01 04 81 e7 90 01 04 81 f6 90 01 04 23 75 90 1b 07 09 fe 81 c3 90 01 04 31 c0 40 50 53 e8 90 01 04 83 c4 08 8b 4d 90 1b 02 8b 55 90 1b 00 89 c3 89 f7 81 c3 90 01 04 41 39 d3 0f 85 90 01 04 89 f0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}