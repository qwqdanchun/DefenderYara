
rule Trojan_BAT_Bladabindi_PA_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 "
		
	strings :
		$a_01_0 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //1 EntryPoint
		$a_01_1 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //1 Invoke
		$a_02_2 = {70 18 18 28 ?? 00 00 06 6f ?? 00 00 0a ?? ?? 14 72 ?? 00 00 70 14 14 14 14 28 ?? 00 00 0a 14 72 ?? 00 00 70 18 8d 01 00 00 01 [0-04] 16 16 8c ?? 00 00 01 a2 [0-02] 14 14 14 28 ?? 00 00 0a [0-02] 2a 90 0a a0 00 28 ?? 00 00 06 ?? 28 ?? 00 00 0a 06 [0-02] 28 ?? 00 00 0a 28 ?? 00 00 0a } //10
		$a_02_3 = {0a 0b 06 6f ?? 00 00 0a [0-02] 73 ?? 00 00 0a 0c 08 07 6f ?? 00 00 0a [0-02] 08 04 6f ?? 00 00 0a [0-02] 08 05 6f ?? 00 00 0a [0-02] 08 6f ?? 00 00 0a [0-02] 02 16 02 8e 69 6f ?? 00 00 0a [0-02] 0d 08 6f ?? 00 00 0a [0-02] 09 13 04 11 04 2a } //10
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10) >=22
 
}