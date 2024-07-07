
rule Trojan_Win32_Stealer_RD_MTB{
	meta:
		description = "Trojan:Win32/Stealer.RD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {2b 74 24 14 89 7c 24 28 89 74 24 40 81 6c 24 28 90 01 04 81 44 24 28 90 01 04 8b 4c 24 28 8b c6 d3 e0 89 7c 24 24 03 44 24 3c 89 44 24 10 8b 44 24 18 01 44 24 24 8b 44 24 40 90 90 01 44 24 24 8b 44 24 24 89 44 24 2c 8b 4c 24 20 8b d6 d3 ea 89 54 24 14 8b 44 24 44 01 44 24 14 8b 44 24 14 33 44 24 2c 89 3d 90 01 04 31 44 24 10 8b 44 24 10 29 44 24 1c 8b 44 24 48 29 44 24 18 ff 4c 24 30 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}