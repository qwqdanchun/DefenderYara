
rule Trojan_Win32_FormBook_ABFJ_MTB{
	meta:
		description = "Trojan:Win32/FormBook.ABFJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {88 55 ff 0f b6 4d ff 2b 4d f0 88 4d ff 0f b6 55 ff c1 fa 90 01 01 0f b6 45 ff c1 e0 90 01 01 0b d0 88 55 ff 0f b6 4d ff f7 d1 88 4d ff 0f b6 55 ff 83 ea 90 01 01 88 55 ff 0f b6 45 ff f7 d8 88 45 ff 8b 4d e8 03 4d f0 8a 55 ff 88 11 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}