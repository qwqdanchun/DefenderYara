
rule Backdoor_WinNT_Blazgel_A{
	meta:
		description = "Backdoor:WinNT/Blazgel.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 7d fc 93 08 00 00 75 41 c7 05 90 01 04 a0 00 00 00 c7 05 90 01 04 58 01 00 00 c7 05 90 01 04 70 02 00 00 c7 05 90 01 04 40 02 00 00 c7 05 90 01 04 9c 00 00 00 c7 05 90 01 04 b0 01 00 00 e9 90 01 01 00 00 00 81 7d fc 28 0a 00 00 75 34 90 00 } //01 00 
		$a_01_1 = {74 43 8b 45 fc 66 8b 00 8b d8 66 81 e3 00 f0 66 81 fb 00 30 75 1e 25 ff 0f 00 00 ff 45 f4 03 01 8b 1c 30 2b 5f 1c 3b 5d 0c 75 09 66 81 7c 30 fe c7 05 74 15 } //00 00 
	condition:
		any of ($a_*)
 
}