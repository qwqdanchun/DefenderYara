
rule PWS_Win32_Azorult_V_MTB{
	meta:
		description = "PWS:Win32/Azorult.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {30 01 46 3b f7 7c 90 09 0b 00 8b 45 90 01 01 8d 0c 06 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}