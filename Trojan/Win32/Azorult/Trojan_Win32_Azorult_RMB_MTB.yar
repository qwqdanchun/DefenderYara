
rule Trojan_Win32_Azorult_RMB_MTB{
	meta:
		description = "Trojan:Win32/Azorult.RMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {c1 ea 05 50 c7 05 90 01 04 b4 21 e1 c5 c7 05 90 01 04 ff ff ff ff 03 d5 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}