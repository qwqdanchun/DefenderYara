
rule Trojan_Win32_CryptInject_YS_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.YS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {eb c9 c6 05 90 01 03 00 72 c6 05 90 01 03 00 74 c6 05 90 01 03 00 61 c6 05 90 01 03 00 6f c6 05 90 01 03 00 65 c6 05 90 01 03 00 74 c6 05 90 01 03 00 69 c6 05 90 01 03 00 56 c6 05 90 01 03 00 72 c6 05 90 01 03 00 50 c6 05 90 01 03 00 75 c6 05 90 01 03 00 6c c6 05 90 01 03 00 63 c6 05 90 01 03 00 74 c6 05 90 01 03 00 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}