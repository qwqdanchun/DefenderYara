
rule Trojan_Win32_Atoff_A{
	meta:
		description = "Trojan:Win32/Atoff.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 47 6c 6f 62 61 6c 5c 41 74 6f 6d 46 75 6e 00 } //10 䜀潬慢屬瑁浯畆n
		$a_03_1 = {51 ff d3 66 85 c0 74 90 01 01 83 c7 01 81 ff ff ff 00 00 72 e9 8d 94 24 90 01 04 52 c7 84 24 90 01 04 94 00 00 00 ff 15 90 00 } //1
		$a_03_2 = {68 ff ff 1f 00 51 89 7c 24 90 01 01 89 7c 24 90 01 01 c7 44 24 90 01 01 24 00 00 00 c7 44 24 90 01 01 03 00 01 00 c7 44 24 90 01 01 08 00 00 00 89 7c 24 90 01 01 c7 44 24 90 01 01 04 00 01 00 c7 84 24 90 01 01 00 00 00 04 00 00 00 89 bc 24 90 01 01 00 00 00 ff d0 83 c4 2c 90 00 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=11
 
}