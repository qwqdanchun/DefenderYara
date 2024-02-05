
rule Trojan_Win32_NSISInject_FC_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {83 c4 08 89 c7 83 ec 10 66 0f 6f 05 00 20 40 00 f3 0f 7f 04 24 ff 15 } //01 00 
		$a_03_1 = {13 00 00 6a 00 56 6a 00 ff 15 90 01 04 83 c4 04 5e 5f c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}