
rule Trojan_Win32_CryptInject_COL_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.COL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 d2 c7 45 fc 1b 90 01 03 8b c6 8d 0c 1e f7 75 fc 2b 55 f8 8a 44 15 cc 32 04 39 46 88 01 81 fe 00 62 07 00 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}