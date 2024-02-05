
rule Trojan_Win32_Opcast_SK_MTB{
	meta:
		description = "Trojan:Win32/Opcast.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {75 7a 78 68 6e 75 63 73 73 62 64 7a } //01 00 
		$a_81_1 = {59 30 55 32 55 38 41 34 } //01 00 
		$a_81_2 = {61 4e 5a 30 67 32 42 35 50 32 65 35 68 32 48 33 56 37 6f } //01 00 
		$a_81_3 = {70 57 68 36 47 30 55 36 6f 31 4e 37 71 30 67 31 44 31 51 48 64 } //00 00 
	condition:
		any of ($a_*)
 
}