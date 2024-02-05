
rule Trojan_Win32_Racealer_T_MTB{
	meta:
		description = "Trojan:Win32/Racealer.T!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 e8 1e a2 90 01 04 0f be 0d 90 01 04 83 e9 14 88 0d 90 01 04 0f be 15 90 01 04 83 ea 14 88 15 90 01 04 0f be 05 90 01 04 83 e8 1e a2 90 00 } //01 00 
		$a_03_1 = {8b 45 f4 c1 e0 04 89 45 e4 90 02 30 d3 ea 89 55 ec 8b 45 ec 03 45 d4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}