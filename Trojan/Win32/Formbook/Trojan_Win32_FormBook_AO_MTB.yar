
rule Trojan_Win32_FormBook_AO_MTB{
	meta:
		description = "Trojan:Win32/FormBook.AO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8a 01 88 45 90 01 01 8b 55 90 01 01 8a 45 90 01 01 88 02 b0 90 01 01 30 02 83 45 fc 90 01 01 73 90 01 01 e8 90 01 04 ff 45 90 01 01 41 81 7d 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}