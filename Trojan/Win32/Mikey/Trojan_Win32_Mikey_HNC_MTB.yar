
rule Trojan_Win32_Mikey_HNC_MTB{
	meta:
		description = "Trojan:Win32/Mikey.HNC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 c6 80 34 39 90 02 02 3b 90 09 05 00 90 02 04 8d 0c 90 00 } //01 00 
		$a_03_1 = {25 73 25 73 c7 44 24 90 01 01 25 73 25 73 88 5c 24 90 09 04 00 c7 44 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}