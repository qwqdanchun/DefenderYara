
rule Trojan_Win32_Salgorea_A_MTB{
	meta:
		description = "Trojan:Win32/Salgorea.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 03 00 "
		
	strings :
		$a_02_0 = {f7 9e 05 81 c7 45 90 01 01 4f 91 31 af c7 45 90 01 01 cf a0 8f dc c7 45 90 01 01 53 69 47 38 c7 45 90 01 01 f3 c8 bd b6 90 00 } //01 00 
		$a_02_1 = {01 23 45 67 c7 85 90 01 04 89 ab cd ef c7 85 90 01 04 fe dc ba 98 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}