
rule Trojan_Win32_StealC_GFE_MTB{
	meta:
		description = "Trojan:Win32/StealC.GFE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 4c 24 10 30 04 0e 83 ff 0f 75 22 } //00 00 
	condition:
		any of ($a_*)
 
}