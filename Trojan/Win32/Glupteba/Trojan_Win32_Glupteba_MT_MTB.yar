
rule Trojan_Win32_Glupteba_MT_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.MT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {56 33 f6 85 ff 7e 90 01 01 55 8b 2d 90 01 04 8b ff 83 ff 2d 75 14 90 00 } //0a 00 
		$a_00_1 = {30 04 1e 81 ff 91 05 00 00 75 0e } //00 00 
	condition:
		any of ($a_*)
 
}