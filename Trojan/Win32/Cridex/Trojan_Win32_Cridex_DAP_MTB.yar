
rule Trojan_Win32_Cridex_DAP_MTB{
	meta:
		description = "Trojan:Win32/Cridex.DAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {66 01 0a 8a c7 b4 72 83 ea 02 f6 ec 8a f8 02 f9 81 fa 90 01 04 7f e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}