
rule Trojan_Win32_IcedId_DEF_MTB{
	meta:
		description = "Trojan:Win32/IcedId.DEF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {83 c4 10 8d 44 24 18 53 6a 01 53 53 50 ff 15 90 01 04 85 c0 75 3a 6a 08 6a 01 53 8d 4c 24 24 53 51 ff 15 90 1b 00 85 c0 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}