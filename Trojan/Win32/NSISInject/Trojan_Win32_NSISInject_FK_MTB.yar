
rule Trojan_Win32_NSISInject_FK_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8b d8 59 59 6a 04 68 00 30 00 00 68 80 74 d2 1a 57 ff d6 } //01 00 
		$a_03_1 = {88 04 3e 47 3b fb 72 90 01 01 6a 00 56 ff 15 90 01 04 5f 5e 33 c0 5b 8b e5 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}