
rule Trojan_BAT_ClipBanker_GZX_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.GZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 04 09 11 04 09 6f 90 01 03 0a 00 23 90 01 08 23 90 01 08 28 90 01 03 0a 58 28 90 01 03 0a 5b 6f 90 01 03 0a 6f 90 01 03 0a 09 11 04 09 6f 90 01 03 0a 00 23 90 01 08 23 90 01 08 28 90 01 03 0a 58 28 90 01 03 0a 5b 6f 90 01 03 0a 6f 90 01 03 0a 09 00 23 90 01 08 23 90 01 08 58 28 90 01 03 0a 6f 90 01 03 0a 09 17 6f 90 01 03 0a 08 09 6f 90 01 03 0a 17 73 90 01 03 0a 13 05 90 00 } //10
		$a_80_1 = {6e 61 68 75 31 31 32 2e 65 78 65 } //nahu112.exe  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1) >=11
 
}