
rule Trojan_Win32_Stealc_GNT_MTB{
	meta:
		description = "Trojan:Win32/Stealc.GNT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b c8 b8 4f ec c4 4e f7 e1 c1 ea 03 6b c2 e6 03 c8 0f be 4c 0c 40 66 89 4c 75 00 46 3b 74 24 74 } //10
	condition:
		((#a_01_0  & 1)*10) >=10
 
}