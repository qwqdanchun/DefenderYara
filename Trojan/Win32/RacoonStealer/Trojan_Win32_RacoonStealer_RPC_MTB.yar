
rule Trojan_Win32_RacoonStealer_RPC_MTB{
	meta:
		description = "Trojan:Win32/RacoonStealer.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 55 fc b8 3b 2d 0b 00 01 45 fc 8b 45 fc 8a 04 08 88 04 31 41 3b 0d 90 01 04 72 e3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}