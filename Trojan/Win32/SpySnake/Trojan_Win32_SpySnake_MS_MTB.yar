
rule Trojan_Win32_SpySnake_MS_MTB{
	meta:
		description = "Trojan:Win32/SpySnake.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8a 04 37 04 07 34 75 fe c8 88 04 37 46 3b f3 72 90 01 01 6a 00 6a 00 6a 02 57 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}