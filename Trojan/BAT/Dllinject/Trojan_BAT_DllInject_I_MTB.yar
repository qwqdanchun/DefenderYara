
rule Trojan_BAT_DllInject_I_MTB{
	meta:
		description = "Trojan:BAT/DllInject.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {00 11 00 20 e8 80 00 00 28 27 00 00 0a 00 [0-0a] 02 04 28 04 00 00 06 28 03 00 00 06 [0-0a] 03 28 02 00 00 06 28 01 00 00 06 0a 06 28 28 00 00 0a 6f 29 00 00 0a 16 8c 23 00 00 01 14 6f 2a 00 00 0a 26 16 28 2b 00 00 } //1
		$a_03_1 = {05 00 00 11 00 20 ?? ?? 00 00 28 27 00 00 0a 00 [0-0a] 02 04 28 04 00 00 06 28 03 00 00 06 [0-0a] 03 28 02 00 00 06 28 01 00 00 06 0a 06 28 28 00 00 0a 6f 29 00 00 0a 16 8c 23 00 00 01 14 6f 2a 00 00 0a 26 16 28 2b 00 00 } //1
		$a_80_2 = {41 6e 64 72 6f 69 64 53 74 75 64 69 6f 2e 64 6c 6c } //AndroidStudio.dll  10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_80_2  & 1)*10) >=11
 
}