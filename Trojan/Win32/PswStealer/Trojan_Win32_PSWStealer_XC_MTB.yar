
rule Trojan_Win32_PSWStealer_XC_MTB{
	meta:
		description = "Trojan:Win32/PSWStealer.XC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 31 81 ea 90 01 04 29 d0 81 e6 90 01 04 81 eb 90 01 04 4b 21 c2 31 37 01 c2 29 da 81 ea 90 01 04 47 f7 d3 89 c3 81 c1 90 01 04 29 d3 01 d0 81 ff 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}