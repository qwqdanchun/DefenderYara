
rule Trojan_Win32_Guildma_psyC_MTB{
	meta:
		description = "Trojan:Win32/Guildma.psyC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 01 00 00 07 00 "
		
	strings :
		$a_03_0 = {8f 41 00 55 8b ec 90 02 0f 49 75 f9 53 56 b8 f8 8f 41 00 e8 59 d3 fe ff 33 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}