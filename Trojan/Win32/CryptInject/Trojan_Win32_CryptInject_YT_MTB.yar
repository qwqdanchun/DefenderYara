
rule Trojan_Win32_CryptInject_YT_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.YT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 45 f4 c6 90 0a 64 00 c6 05 90 01 03 00 65 c6 05 90 01 03 00 6c c6 05 90 01 03 00 2e c6 05 90 01 03 00 6e c6 05 90 01 03 00 33 c6 05 90 01 03 00 65 c6 05 90 01 03 00 6c c6 05 90 01 03 00 64 c6 05 90 01 03 00 6c c6 05 90 01 03 00 32 c6 05 90 01 03 00 72 c6 05 90 01 03 00 6b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}