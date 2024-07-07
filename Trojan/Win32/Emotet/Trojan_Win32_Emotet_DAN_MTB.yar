
rule Trojan_Win32_Emotet_DAN_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {6a 0a 6a 05 68 90 01 04 e8 90 01 04 68 90 01 04 68 90 01 04 e8 90 01 04 02 5c 24 58 83 c6 01 0f b6 c3 8a 4c 04 68 8b 44 24 64 30 4c 30 ff 83 c4 30 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}