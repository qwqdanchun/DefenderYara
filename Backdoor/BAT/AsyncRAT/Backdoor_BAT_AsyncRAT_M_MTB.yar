
rule Backdoor_BAT_AsyncRAT_M_MTB{
	meta:
		description = "Backdoor:BAT/AsyncRAT.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 25 16 28 ?? 00 00 0a 8c ?? 00 00 01 a2 25 17 28 ?? 00 00 0a a2 25 18 28 ?? 00 00 0a a2 25 19 28 ?? 00 00 0a a2 25 1a 28 ?? 00 00 0a 28 ?? 00 00 0a 73 ?? 00 00 0a 28 ?? 00 00 0a 8c ?? 00 00 01 a2 28 ?? 00 00 0a 13 05 73 ?? 00 00 0a 28 ?? 00 00 0a 11 05 6f ?? 00 00 0a 0b 07 6f ?? 00 00 0a 0b 73 } //2
		$a_03_1 = {09 06 91 13 06 08 12 06 20 ?? ?? ?? e9 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 26 06 17 58 0a 06 09 8e 69 32 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}