
rule Trojan_Win32_Glupteba_NX_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.NX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {30 04 33 81 ff 90 02 04 75 90 01 01 6a 00 90 02 0d ff 15 90 02 04 46 3b f7 90 18 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}