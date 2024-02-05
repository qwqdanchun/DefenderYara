
rule Trojan_Win32_LuoBot_RPZ_MTB{
	meta:
		description = "Trojan:Win32/LuoBot.RPZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 f7 89 f0 31 db 81 c7 90 01 02 00 00 81 2e 90 01 04 83 c6 04 66 ba 80 9a 39 fe 7c ef 90 00 } //01 00 
		$a_02_1 = {89 f7 31 c0 89 f0 81 c7 90 01 02 00 00 81 2e 90 01 04 83 c6 04 39 fe 7c f3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}