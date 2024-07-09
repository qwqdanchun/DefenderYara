
rule Trojan_BAT_Injector_NI_MTB{
	meta:
		description = "Trojan:BAT/Injector.NI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 6b 00 00 0a 02 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 0a 73 ?? ?? ?? 0a 25 20 ?? ?? ?? 7d 28 ?? ?? ?? 06 6f ?? ?? ?? 0a 25 20 ?? ?? ?? 7d 28 ?? ?? ?? 06 06 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 25 17 6f ?? ?? ?? 0a 25 17 6f ?? ?? ?? 0a 25 17 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a } //5
		$a_03_1 = {03 1f 10 28 0b 00 00 2b 28 ?? ?? ?? 2b 0b 03 1f 10 28 ?? ?? ?? 2b 03 8e 69 1f 10 59 28 ?? ?? ?? 2b 28 ?? ?? ?? 2b 0c 06 02 7b ?? ?? ?? 04 6f ?? ?? ?? 0a 06 07 6f ?? ?? ?? 0a 06 17 6f ?? ?? ?? 0a 06 18 6f ?? ?? ?? 0a 06 06 6f ?? ?? ?? 0a 06 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0d } //5
		$a_01_2 = {46 61 72 74 73 79 70 68 68 71 74 77 62 6c 77 } //1 Fartsyphhqtwblw
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1) >=11
 
}