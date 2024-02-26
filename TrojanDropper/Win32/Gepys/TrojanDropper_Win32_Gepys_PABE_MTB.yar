
rule TrojanDropper_Win32_Gepys_PABE_MTB{
	meta:
		description = "TrojanDropper:Win32/Gepys.PABE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {05 81 aa 00 00 31 d2 a3 90 01 03 00 a1 90 01 03 00 f7 f1 b9 4e 00 01 00 31 d2 f7 f1 a1 90 01 03 00 89 15 90 01 03 00 09 d8 88 d9 05 51 c5 00 00 31 d2 a3 90 01 03 00 d3 e8 b9 ef ff 00 00 f7 f1 8a 0d 90 01 03 00 89 d8 d3 f8 8b 0d 90 01 03 00 89 15 90 01 03 00 29 c1 31 d2 89 c8 b9 2d 0b 01 00 f7 f1 b9 d5 0d 01 00 8d 43 ff 89 15 90 01 03 00 23 05 90 01 03 00 31 d2 f7 f1 a1 90 01 03 00 0c 01 0f af c3 8b 0d 90 01 03 00 89 15 90 01 03 00 29 c1 31 d2 89 c8 b9 6c 0a 01 00 f7 f1 b9 99 0e 01 00 a1 90 01 03 00 89 15 90 01 03 00 01 d8 31 d2 f7 f1 a1 90 01 03 00 e9 13 fe ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}