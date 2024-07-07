
rule Trojan_Win32_Azorult_BS_MTB{
	meta:
		description = "Trojan:Win32/Azorult.BS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {03 cb 89 8d 90 01 04 8b cb c1 e9 05 03 8d 90 01 04 89 85 90 01 04 89 35 90 01 04 89 35 90 01 04 8b 85 90 01 04 31 85 90 01 04 81 3d 90 01 04 72 07 00 00 75 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}