
rule Trojan_BAT_FormBook_EUK_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EUK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {02 03 17 58 ?? ?? ?? ?? ?? 5d 91 0a 16 13 05 2b 00 16 0b 16 13 06 2b 00 02 03 1f 16 ?? ?? ?? ?? ?? 0c 06 04 58 0d 08 09 59 04 5d 0b 16 13 07 2b 00 } //1
		$a_03_1 = {5d 91 0a 06 ?? ?? ?? ?? ?? 03 04 5d ?? ?? ?? ?? ?? 61 0b 2b 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}