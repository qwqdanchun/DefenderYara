
rule Trojan_Win32_TrickBotCrypt_FE_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.FE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 08 0f b6 95 90 01 04 33 ca 8b 85 90 01 04 2b 85 90 01 04 0f b6 d0 81 e2 80 90 01 03 33 ca 8b 85 90 01 04 88 08 90 00 } //01 00 
		$a_81_1 = {44 45 48 55 47 48 20 45 42 53 54 20 59 44 55 53 49 4a 42 44 53 20 4f 46 44 55 49 46 56 44 47 53 48 42 } //01 00 
		$a_81_2 = {6a 6f 65 62 6f 78 63 6f 6e 74 72 6f 6c 2e 65 78 65 } //01 00 
		$a_81_3 = {6a 6f 65 62 6f 78 73 65 72 76 65 72 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}