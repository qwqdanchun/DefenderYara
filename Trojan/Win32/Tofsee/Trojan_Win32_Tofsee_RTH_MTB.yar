
rule Trojan_Win32_Tofsee_RTH_MTB{
	meta:
		description = "Trojan:Win32/Tofsee.RTH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 89 44 24 90 01 01 89 4c 24 90 01 01 8b 84 24 90 01 04 01 44 24 90 01 01 8d 14 33 31 54 24 90 01 01 81 3d 90 01 04 f5 03 00 00 c7 05 90 01 04 36 06 ea e9 75 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}