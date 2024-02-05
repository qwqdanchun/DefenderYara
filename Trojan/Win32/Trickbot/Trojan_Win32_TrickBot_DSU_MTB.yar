
rule Trojan_Win32_TrickBot_DSU_MTB{
	meta:
		description = "Trojan:Win32/TrickBot.DSU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f b6 cb 03 c1 99 b9 90 01 04 f7 f9 8a 5d 00 8b 44 24 90 01 01 83 c4 30 8a 54 14 90 01 01 32 da 88 5d 90 00 } //01 00 
		$a_81_1 = {54 53 3f 33 3f 49 50 7c 53 43 36 6f 56 25 53 7d 57 5a 69 32 54 4a 79 7c } //00 00 
	condition:
		any of ($a_*)
 
}