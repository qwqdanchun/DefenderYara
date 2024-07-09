
rule Trojan_BAT_AsyncRAT_B_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 28 ?? 00 00 0a 03 6f ?? 00 00 0a 6f ?? 00 00 0a 0a 73 ?? 00 00 0a 0c 08 06 6f ?? 00 00 0a 00 08 18 6f ?? 00 00 0a 00 08 6f ?? 00 00 0a 0d 09 02 16 02 8e 69 6f ?? 00 00 0a 13 04 08 6f ?? 00 00 0a 00 11 04 13 05 } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {52 65 70 6c 61 63 65 } //1 Replace
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}