
rule Trojan_Win32_Rozena_MKV_MTB{
	meta:
		description = "Trojan:Win32/Rozena.MKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 c0 01 d0 8b 4c 24 14 8b 54 24 1c 8d 1c 11 89 04 24 e8 90 01 04 88 03 8b 54 24 14 8b 44 24 1c 01 d0 0f b6 10 8b 4c 24 14 8b 44 24 1c 01 c8 83 f2 13 88 10 83 44 24 1c 01 8b 44 24 90 01 01 d1 e8 39 44 24 1c 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}