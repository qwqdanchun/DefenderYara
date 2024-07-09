
rule Trojan_Win64_Dridex_MY_MTB{
	meta:
		description = "Trojan:Win64/Dridex.MY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {b0 24 66 8b [0-03] 66 89 [0-03] 8a [0-03] 44 8a [0-03] 41 80 [0-03] 44 88 [0-03] 28 d0 4c 8b [0-03] 4d 21 c9 8a [0-03] 4c 89 [0-03] 4c 8b [0-03] 4c 89 [0-03] 38 d0 0f 87 [0-04] e9 } //1
		$a_02_1 = {66 8b 44 24 ?? 66 35 [0-03] 8b [0-03] 66 89 [0-03] 81 f1 [0-04] 8b [0-03] 89 [0-03] 44 8b [0-03] 44 8a [0-03] 41 80 [0-03] 44 88 [0-03] 41 39 c8 77 c8 e9 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}