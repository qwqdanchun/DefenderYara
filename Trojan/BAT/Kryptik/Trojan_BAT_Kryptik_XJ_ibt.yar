
rule Trojan_BAT_Kryptik_XJ_ibt{
	meta:
		description = "Trojan:BAT/Kryptik.XJ!ibt,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_02_0 = {06 de 03 26 de 00 2a 90 0a 10 00 28 ?? 00 00 } //2
		$a_02_1 = {06 dd 06 00 00 00 26 dd 00 00 00 00 2a 90 0a 15 00 28 ?? 00 00 } //2
		$a_02_2 = {0a 14 14 6f ?? 00 00 0a 26 90 0a 0a 00 6f ?? 00 00 } //1
		$a_02_3 = {fe 0e 00 00 fe 0c 00 00 28 1b 00 00 06 dd 06 00 00 00 26 dd 00 00 00 00 2a 90 0a 30 00 28 ?? 00 00 06 } //5
		$a_02_4 = {06 de 03 26 de 00 2a 90 0a 30 00 28 ?? 00 00 06 28 ?? 00 00 0a 28 ?? 00 00 0a 0a 06 28 ?? 00 00 } //5
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*1+(#a_02_3  & 1)*5+(#a_02_4  & 1)*5) >=8
 
}