
rule Trojan_Win32_Agent_HU{
	meta:
		description = "Trojan:Win32/Agent.HU,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4f 8a 06 4e 8a 26 4e 32 c4 88 07 4f e2 f6 5f 5e } //1
		$a_03_1 = {74 19 68 00 00 04 00 ff 35 90 01 04 ff 35 90 01 04 6a 00 ff 15 90 01 04 68 90 01 04 68 90 01 04 6a 00 6a 00 6a 04 6a 00 6a 00 6a 00 90 00 } //1
		$a_03_2 = {c3 6a 00 53 ff 75 f8 ff 35 90 01 04 ff 35 90 01 04 ff 15 90 01 04 ff 75 f8 6a 08 ff 75 fc ff 15 90 01 04 0f b7 46 08 8d 04 45 0a 00 00 00 90 00 } //1
		$a_01_3 = {68 10 10 05 00 ff 35 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}