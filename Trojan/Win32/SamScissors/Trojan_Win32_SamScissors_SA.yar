
rule Trojan_Win32_SamScissors_SA{
	meta:
		description = "Trojan:Win32/SamScissors.SA,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 8b d8 e8 90 01 04 44 8b c0 b8 90 01 04 41 f7 e8 8d 83 90 01 04 c1 fa 90 01 01 8b ca c1 e9 90 01 01 03 d1 69 ca 90 01 04 48 8d 55 90 01 01 44 2b c1 48 8d 4c 24 90 01 01 41 03 c0 90 0a 3b 00 33 c9 e8 90 00 } //1
		$a_03_1 = {0f 11 84 24 90 01 04 44 8b 06 8b dd bf 90 0a 15 00 b8 90 01 04 41 ba 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}