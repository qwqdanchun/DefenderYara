
rule Trojan_Win32_Redline_GDB_MTB{
	meta:
		description = "Trojan:Win32/Redline.GDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f be 04 10 6b c0 90 01 01 be 90 01 04 99 f7 fe 89 c2 8b 45 90 01 01 6b d2 90 01 01 31 d1 01 c8 88 c2 8b 45 90 01 01 8b 4d 90 01 01 88 14 08 0f be 75 90 01 01 8b 45 90 01 01 8b 4d 90 01 01 0f b6 14 08 29 f2 88 14 08 8b 45 90 01 01 83 c0 90 01 01 89 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}