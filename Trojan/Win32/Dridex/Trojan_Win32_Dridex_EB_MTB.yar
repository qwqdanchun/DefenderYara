
rule Trojan_Win32_Dridex_EB_MTB{
	meta:
		description = "Trojan:Win32/Dridex.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {ba 03 00 00 00 0f c2 c8 02 83 c2 04 83 c2 04 83 c2 04 83 c2 04 83 c2 04 83 c2 04 } //01 00 
		$a_01_1 = {52 46 46 47 54 45 51 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}