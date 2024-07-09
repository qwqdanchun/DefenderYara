
rule Trojan_Win32_LokibotCrypt_MV_MTB{
	meta:
		description = "Trojan:Win32/LokibotCrypt.MV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 45 08 30 [0-02] 83 [0-02] 90 18 46 3b f7 90 18 a1 [0-04] 69 [0-05] 05 [0-04] a3 [0-04] 0f [0-06] 81 [0-05] 81 [0-09] 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}