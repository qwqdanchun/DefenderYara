
rule Trojan_Win32_VirLock_SK_MTB{
	meta:
		description = "Trojan:Win32/VirLock.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {32 c2 88 07 46 47 49 83 f9 00 e9 00 00 00 00 } //02 00 
		$a_01_1 = {8a 06 90 32 c2 90 88 07 46 47 90 49 83 f9 00 90 0f 85 ea ff ff ff } //00 00 
	condition:
		any of ($a_*)
 
}