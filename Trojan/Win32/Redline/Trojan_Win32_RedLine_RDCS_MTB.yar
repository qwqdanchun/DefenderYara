
rule Trojan_Win32_RedLine_RDCS_MTB{
	meta:
		description = "Trojan:Win32/RedLine.RDCS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {32 c3 fe c8 02 c7 88 04 0e } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}