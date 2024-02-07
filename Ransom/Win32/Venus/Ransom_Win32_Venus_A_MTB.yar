
rule Ransom_Win32_Venus_A_MTB{
	meta:
		description = "Ransom:Win32/Venus.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 f0 08 50 0f b7 87 90 01 02 00 00 83 f0 07 50 0f b7 87 90 01 02 00 00 33 c1 83 f0 05 50 0f b7 87 90 01 02 00 00 33 c1 83 f0 06 50 ff 75 fc 68 90 00 } //01 00 
		$a_03_1 = {58 8b 4d fc b8 90 01 04 8b 75 08 f7 e1 03 f1 c1 ea 04 8d 04 52 c1 e0 03 2b c8 8a 81 90 01 04 30 06 50 33 c0 90 13 58 8b 45 fc 40 89 45 fc 3b 45 0c 7c 90 00 } //01 00 
		$a_01_2 = {2e 00 67 00 6f 00 6f 00 64 00 67 00 61 00 6d 00 65 00 } //00 00  .goodgame
	condition:
		any of ($a_*)
 
}