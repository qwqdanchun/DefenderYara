
rule Trojan_Win32_Amadey_NMJ_MTB{
	meta:
		description = "Trojan:Win32/Amadey.NMJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 6c 24 10 89 74 24 90 01 01 8b 44 24 90 01 01 01 44 24 90 01 01 8b 44 24 90 01 02 01 44 24 90 01 01 8b 44 24 90 01 01 89 44 24 90 01 01 8b 4c 24 90 01 01 31 4c 24 90 01 01 8b f3 c1 ee 90 01 01 03 74 24 90 01 01 81 3d 90 01 08 75 90 00 } //1
		$a_03_1 = {6a 00 ff 15 90 01 04 8b 54 24 90 01 01 52 56 8d 44 24 90 01 01 50 e8 90 01 04 2b 7c 24 90 01 01 81 44 24 90 01 05 83 6c 24 90 01 02 89 7c 24 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}