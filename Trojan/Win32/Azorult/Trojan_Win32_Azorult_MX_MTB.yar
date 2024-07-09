
rule Trojan_Win32_Azorult_MX_MTB{
	meta:
		description = "Trojan:Win32/Azorult.MX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {30 0c 1e 83 [0-02] 90 18 46 3b f7 90 18 a1 [0-04] 69 [0-05] 05 [0-04] a3 [0-04] 8a 0d } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}