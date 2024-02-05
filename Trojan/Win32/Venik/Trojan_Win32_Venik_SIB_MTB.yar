
rule Trojan_Win32_Venik_SIB_MTB{
	meta:
		description = "Trojan:Win32/Venik.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 f8 ff 74 90 01 01 3b c6 7e 90 01 01 53 8d 85 90 01 04 56 50 e8 90 01 04 90 02 05 8d 85 90 1b 02 56 53 50 8b 45 90 01 01 ff 70 90 01 01 ff 15 90 01 04 8b f8 3b fe 7e 90 01 01 8d 85 90 1b 02 57 50 90 18 8b 44 24 90 01 01 33 c9 39 4c 24 90 01 01 7e 90 01 01 8a 14 01 80 ea 90 01 01 80 f2 90 01 01 88 14 01 41 3b 4c 24 90 1b 0d 7c 90 00 } //01 00 
		$a_02_1 = {8b 44 24 04 33 c9 39 4c 24 90 01 01 7e 90 01 01 8a 14 01 80 f2 90 01 01 80 c2 90 01 01 88 14 01 41 3b 4c 24 90 1b 00 7c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}