
rule Trojan_Win32_KryptStealer_AA_MTB{
	meta:
		description = "Trojan:Win32/KryptStealer.AA!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {c7 45 00 00 80 02 00 c6 45 10 9f c6 45 11 19 c6 45 12 46 c6 45 13 7b c6 45 14 b3 c6 45 15 22 c6 45 16 12 c6 45 17 7f c6 45 18 9f c6 45 19 3b c6 45 1a 08 } //1
		$a_01_1 = {8b 45 08 83 c0 01 89 45 08 8b 4d 00 83 e9 01 39 4d 08 7f 1b 8b 55 00 83 ea 01 2b 55 08 8b 45 ec 8b 0c d0 f7 d1 8b 55 fc 03 55 08 88 0a } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}