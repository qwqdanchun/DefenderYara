
rule Trojan_Win32_Dridex_RAB_MTB{
	meta:
		description = "Trojan:Win32/Dridex.RAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 c4 04 8b 15 90 01 04 89 15 90 01 04 a1 90 01 04 03 05 90 01 04 2b 45 90 01 01 03 05 90 01 04 a3 90 01 04 8b 0d 90 01 04 2b 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 03 55 90 01 01 03 15 90 01 04 89 15 90 01 04 83 3d 90 01 04 00 90 00 } //1
		$a_02_1 = {83 c4 04 a1 90 01 04 a3 90 01 04 8b 0d 90 01 04 03 0d 90 01 04 2b 4d 90 01 01 03 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 2b 15 90 01 04 89 15 90 01 04 a1 90 01 04 03 45 90 01 01 03 05 90 01 04 a3 90 01 04 83 3d 90 01 04 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}