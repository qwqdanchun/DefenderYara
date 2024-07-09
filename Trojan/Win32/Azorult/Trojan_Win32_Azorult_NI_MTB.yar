
rule Trojan_Win32_Azorult_NI_MTB{
	meta:
		description = "Trojan:Win32/Azorult.NI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {30 0c 3e 46 3b f3 90 18 81 [0-05] 90 18 a1 [0-04] 69 [0-05] 05 [0-04] a3 [0-04] 8a } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}