
rule Trojan_Win32_Fauppod_SPZX_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.SPZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_81_0 = {4a 65 65 68 50 65 65 61 65 6f 72 } //02 00  JeehPeeaeor
		$a_01_1 = {4a 65 65 68 50 65 65 61 65 6f 72 } //00 00  JeehPeeaeor
	condition:
		any of ($a_*)
 
}