
rule Trojan_BAT_LokiBot_RDA_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 64 00 6d 00 69 00 6e 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 3d 00 27 00 } //1 SELECT * FROM Admin WHERE username ='
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 64 00 6d 00 69 00 6e 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3d 00 } //1 SELECT * FROM Admin WHERE password=
		$a_01_2 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 41 00 64 00 6d 00 69 00 6e 00 2e 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 64 00 6d 00 69 00 6e 00 20 00 77 00 68 00 65 00 72 00 65 00 20 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 3d 00 20 00 4e 00 27 00 7b 00 30 00 7d 00 27 00 } //1 SELECT Admin.username from Admin where username = N'{0}'
		$a_01_3 = {53 00 79 00 73 00 74 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 65 00 6d 00 2e 00 41 00 63 00 74 00 69 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 76 00 61 00 74 00 6f 00 72 00 } //1 Syst        em.Acti        vator
		$a_01_4 = {43 00 72 00 65 00 61 00 74 00 20 00 20 00 20 00 20 00 20 00 65 00 49 00 6e 00 73 00 74 00 61 00 20 00 20 00 20 00 20 00 6e 00 63 00 65 00 } //1 Creat     eInsta    nce
		$a_03_5 = {00 08 09 11 04 28 ?? ?? ?? ?? 13 05 11 05 28 ?? ?? ?? ?? 13 06 07 06 11 06 d2 9c 00 11 04 17 58 13 04 11 04 17 fe 04 13 07 11 07 } //2
		$a_03_6 = {0a 00 02 16 6f ?? ?? ?? ?? 00 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 28 38 00 00 0a 28 39 00 00 0a 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 28 38 00 00 0a 20 00 01 00 00 14 14 18 8d 15 00 00 01 25 16 7e ?? ?? ?? ?? 74 43 00 00 01 a2 25 17 02 7b ?? ?? ?? ?? a2 6f 3a 00 00 0a 26 2a } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2) >=9
 
}