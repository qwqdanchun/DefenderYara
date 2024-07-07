
rule Trojan_Win32_Convagent_SPDD_MTB{
	meta:
		description = "Trojan:Win32/Convagent.SPDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {69 c9 fd 43 03 00 81 c1 c3 9e 26 00 89 0d 90 01 04 8a 15 90 01 04 30 14 1e 83 ff 0f 75 29 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}