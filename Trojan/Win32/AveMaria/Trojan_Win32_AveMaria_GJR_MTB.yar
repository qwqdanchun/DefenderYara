
rule Trojan_Win32_AveMaria_GJR_MTB{
	meta:
		description = "Trojan:Win32/AveMaria.GJR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 4d ff 03 c1 0f bf 55 e4 2b c2 0f b6 4d fb 0f be 55 fd 33 ca 0f af c1 88 45 ef b8 90 01 04 69 c8 f3 00 00 00 8a 15 90 01 04 88 91 90 01 04 0f b6 05 90 01 04 83 c0 11 a2 90 01 04 8b 4d cc 83 c1 01 89 4d cc 81 7d 90 01 05 0f 8c 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}