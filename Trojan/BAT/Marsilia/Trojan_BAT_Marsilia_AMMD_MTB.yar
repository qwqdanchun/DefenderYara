
rule Trojan_BAT_Marsilia_AMMD_MTB{
	meta:
		description = "Trojan:BAT/Marsilia.AMMD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 13 0b 73 ?? 00 00 0a 11 0b 72 ?? ?? 00 70 07 28 ?? 00 00 0a 6f ?? 00 00 0a 11 0b 6f ?? 00 00 0a 6f ?? 00 00 0a 25 28 ?? 00 00 0a 13 0c 72 ?? ?? 00 70 28 ?? 00 00 06 16 8d ?? 00 00 01 28 ?? 00 00 06 72 } //2
		$a_80_1 = {7b 31 7d 5b 31 39 5d 5b 31 39 5d 5b 35 5d 5b 31 33 5d 5b 32 5d 5b 31 32 5d 5b 32 35 5d } //{1}[19][19][5][13][2][12][25]  1
		$a_80_2 = {7b 31 32 7d 5b 31 35 5d 5b 31 5d 5b 34 5d } //{12}[15][1][4]  1
		$a_80_3 = {7b 35 7d 5b 31 34 5d 5b 32 30 5d 5b 31 38 5d 5b 32 35 5d 7b 31 36 7d 5b 31 35 5d 5b 39 5d 5b 31 34 5d 5b 32 30 5d } //{5}[14][20][18][25]{16}[15][9][14][20]  1
	condition:
		((#a_03_0  & 1)*2+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1) >=5
 
}