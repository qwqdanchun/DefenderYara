
rule Trojan_Win32_NSISInject_DG_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.DG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {89 45 fc 6a 04 68 00 30 00 00 68 00 a3 e1 11 6a 00 ff 55 fc } //01 00 
		$a_03_1 = {c1 f8 05 0f b6 0d 90 01 04 c1 e1 03 0b c1 a2 90 01 04 0f b6 15 90 09 1f 00 a2 90 01 04 0f b6 15 90 01 04 2b 15 90 01 04 88 15 90 01 04 0f b6 05 90 00 } //01 00 
		$a_03_2 = {c1 fa 03 0f b6 05 90 01 04 c1 e0 05 0b d0 88 15 90 01 04 0f b6 0d 90 09 20 00 88 15 90 01 04 0f b6 0d 90 01 04 03 0d 90 01 04 88 0d 90 01 04 0f b6 15 90 00 } //01 00 
		$a_03_3 = {c1 f9 06 0f b6 15 90 01 04 c1 e2 02 0b ca 88 0d 90 01 04 0f b6 05 90 09 1f 00 88 0d 90 01 04 0f b6 05 90 01 04 2b 05 90 01 04 a2 90 01 04 0f b6 0d 90 00 } //01 00 
		$a_03_4 = {c1 f9 05 0f b6 15 90 01 04 c1 e2 03 0b ca 88 0d 90 01 04 0f b6 05 90 09 1f 00 88 15 90 01 04 0f b6 05 90 01 04 2b 05 90 01 04 a2 90 01 04 0f b6 0d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}