
rule Trojan_Win32_Fareit_Chl_MTB{
	meta:
		description = "Trojan:Win32/Fareit.Chl!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {91 8d 83 91 01 00 00 a1 90 01 04 8b 40 28 03 07 a3 90 01 04 05 dd 03 00 00 29 c3 0f af ca 6a 00 6a 01 8b 07 50 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}