
rule Trojan_Win32_Zbot_SIBG3_MTB{
	meta:
		description = "Trojan:Win32/Zbot.SIBG3!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 04 00 00 01 00 "
		
	strings :
		$a_80_0 = {62 75 64 68 61 2e 65 78 65 } //budha.exe  01 00 
		$a_02_1 = {6b 00 69 00 6c 00 66 00 90 02 05 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_2 = {6b 69 6c 66 90 02 05 2e 65 78 65 90 00 } //0a 00 
		$a_02_3 = {2b ce 3b c8 74 90 01 01 ff 45 90 01 01 83 7d 90 1b 01 90 01 01 7c 90 01 01 83 7d 90 1b 01 90 01 01 0f 84 90 01 04 80 3e 90 01 01 74 90 01 01 80 7e 90 01 02 74 90 01 01 c1 e0 90 01 01 50 6a 90 01 01 ff 75 90 01 01 ff 15 90 01 04 89 45 90 01 01 3b c3 0f 84 90 01 04 8b 7d 90 01 01 8b 45 90 01 01 8b 40 90 01 01 8b d7 33 c9 83 e7 90 01 01 c1 e2 90 01 01 41 89 5d 90 01 01 83 ff 90 01 01 76 90 01 01 31 04 8e 8b 7d 90 1b 12 41 c1 ef 90 01 01 3b cf 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}