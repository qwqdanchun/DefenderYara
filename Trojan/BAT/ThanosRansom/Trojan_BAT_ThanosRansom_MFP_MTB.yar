
rule Trojan_BAT_ThanosRansom_MFP_MTB{
	meta:
		description = "Trojan:BAT/ThanosRansom.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0a 00 03 00 00 "
		
	strings :
		$a_02_0 = {28 0c 00 00 0a 6f ?? ?? ?? 0a 0c 08 6f ?? ?? ?? 0a 0d 1d 28 ?? ?? ?? 0a 7e ?? ?? ?? 04 20 ?? ?? ?? 06 28 ?? ?? ?? 06 28 ?? ?? ?? 0a 13 04 11 04 09 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 05 7e ?? ?? ?? 04 7e } //5
		$a_02_1 = {28 4d 00 00 06 2d 15 28 4e ?? ?? 06 2d 0e 28 4b ?? ?? 06 2d 07 28 4c ?? ?? 06 2c 0a 28 0c ?? ?? 0a 6f ?? ?? ?? 0a 14 28 ?? ?? ?? 0a 2a } //5
		$a_02_2 = {14 0a 03 04 28 ?? ?? ?? 06 0b 14 10 ?? 28 ?? ?? ?? 0a 73 ?? ?? ?? 0a 0c 08 20 ?? ?? ?? 00 6f ?? ?? ?? 0a 08 07 08 6f ?? ?? ?? 0a 1e 5b 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 08 07 08 6f ?? ?? ?? 0a 1e 5b 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 08 17 6f ?? ?? ?? 0a 08 17 6f ?? ?? ?? 0a 73 16 01 00 0a 0d 09 08 6f ?? ?? ?? 0a 17 73 ?? ?? ?? 0a 13 ?? 11 ?? 02 16 02 8e 69 6f ?? ?? ?? 0a 11 04 6f ?? ?? ?? 0a de ?? 11 ?? 2c ?? 11 ?? 6f ?? ?? ?? 0a dc 09 6f 18 01 00 0a 0a de 0a 09 2c 06 09 6f ?? ?? ?? 0a dc 07 6f ?? ?? ?? 0a de 0a 08 2c 06 08 6f ?? ?? ?? 0a dc 06 } //5
	condition:
		((#a_02_0  & 1)*5+(#a_02_1  & 1)*5+(#a_02_2  & 1)*5) >=10
 
}