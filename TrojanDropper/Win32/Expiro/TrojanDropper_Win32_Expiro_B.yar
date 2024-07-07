
rule TrojanDropper_Win32_Expiro_B{
	meta:
		description = "TrojanDropper:Win32/Expiro.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 d0 88 04 3e 80 05 90 01 04 01 0f b6 05 90 01 04 3d ff 00 00 00 75 07 c6 05 90 01 04 00 83 65 90 01 01 00 eb 0d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}