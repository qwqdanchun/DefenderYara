
rule Trojan_BAT_FormBook_EUF_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EUF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {02 03 17 58 ?? ?? ?? ?? ?? 5d 91 0a 16 0b 02 03 1f 16 ?? ?? ?? ?? ?? 0c 06 04 58 0d 08 09 59 04 5d 0b 02 03 ?? ?? ?? ?? ?? 5d 07 ?? ?? ?? ?? ?? 9c 02 13 04 11 04 2a } //1
		$a_03_1 = {5d 91 0a 06 ?? ?? ?? ?? ?? 03 04 5d ?? ?? ?? ?? ?? 61 0b 07 2a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}