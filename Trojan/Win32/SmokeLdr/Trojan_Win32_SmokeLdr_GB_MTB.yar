
rule Trojan_Win32_SmokeLdr_GB_MTB{
	meta:
		description = "Trojan:Win32/SmokeLdr.GB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_00_0 = {88 04 33 33 c0 81 ff 03 02 00 00 0f 44 d0 46 3b f7 } //0a 00 
		$a_02_1 = {30 04 1f 47 3b fe 90 02 02 5f 81 fe 71 11 00 00 5e 5d 5b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}