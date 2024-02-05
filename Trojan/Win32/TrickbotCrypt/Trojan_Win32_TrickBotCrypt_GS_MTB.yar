
rule Trojan_Win32_TrickBotCrypt_GS_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.GS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b d5 8b 6c 24 90 01 01 03 d5 8a 1c 3a 33 d2 03 c3 f7 35 90 01 04 8b c7 03 c2 8a 0c 06 8b 44 24 90 01 01 8a 18 32 d9 8b 4c 24 90 01 01 88 18 8b 44 24 90 01 01 40 3b c1 89 44 24 90 01 01 0f 82 90 00 } //01 00 
		$a_81_1 = {39 42 47 64 68 63 5f 68 48 5f 56 55 36 6b 79 54 71 32 5f 41 34 6c 64 33 78 41 56 73 68 57 29 2a 5f 70 79 52 44 26 2a 6e 3c 32 23 6f 5e 76 68 53 43 7a 41 34 34 55 6a 69 5e 4c 6f 4d 39 6c } //00 00 
	condition:
		any of ($a_*)
 
}