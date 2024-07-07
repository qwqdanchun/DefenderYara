
rule Trojan_Win32_FormBook_SS_MTB{
	meta:
		description = "Trojan:Win32/FormBook.SS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_01_0 = {79 00 4d 00 71 00 6a 00 36 00 7a 00 33 00 7a 00 31 00 54 00 36 00 49 00 35 00 75 00 34 00 48 00 46 00 6f 00 4b 00 4e 00 6a 00 57 00 55 00 32 00 32 00 38 00 } //1 yMqj6z3z1T6I5u4HFoKNjWU228
		$a_01_1 = {48 00 54 00 57 00 44 00 32 00 78 00 6a 00 53 00 75 00 52 00 75 00 38 00 77 00 42 00 32 00 6a 00 49 00 31 00 36 00 79 00 30 00 6c 00 46 00 6f 00 33 00 4b 00 31 00 38 00 37 00 } //1 HTWD2xjSuRu8wB2jI16y0lFo3K187
		$a_01_2 = {76 00 39 00 79 00 4a 00 48 00 62 00 4b 00 73 00 55 00 49 00 58 00 43 00 62 00 52 00 54 00 5a 00 4d 00 39 00 5a 00 31 00 34 00 32 00 } //1 v9yJHbKsUIXCbRTZM9Z142
		$a_01_3 = {65 00 53 00 76 00 43 00 66 00 46 00 52 00 43 00 66 00 54 00 4f 00 38 00 54 00 41 00 34 00 76 00 75 00 31 00 36 00 37 00 } //1 eSvCfFRCfTO8TA4vu167
		$a_01_4 = {4a 00 66 00 6e 00 57 00 44 00 51 00 59 00 65 00 4d 00 42 00 6d 00 6a 00 59 00 58 00 4d 00 50 00 6c 00 69 00 48 00 48 00 66 00 6e 00 33 00 33 00 } //1 JfnWDQYeMBmjYXMPliHHfn33
		$a_00_5 = {51 8b 0f eb 01 ba eb 01 ff 6a 00 eb 01 ac eb 01 b0 89 0c 24 eb 01 02 eb 01 62 31 34 24 eb 01 f1 eb 01 09 59 } //5
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*5) >=8
 
}
rule Trojan_Win32_FormBook_SS_MTB_2{
	meta:
		description = "Trojan:Win32/FormBook.SS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {45 00 77 00 79 00 45 00 66 00 75 00 79 00 62 00 69 00 44 00 74 00 42 00 44 00 32 00 6e 00 52 00 68 00 35 00 6e 00 42 00 34 00 57 00 6c 00 6b 00 6a 00 65 00 4a 00 47 00 52 00 58 00 4d 00 35 00 6a 00 4e 00 51 00 32 00 34 00 30 00 } //1 EwyEfuybiDtBD2nRh5nB4WlkjeJGRXM5jNQ240
		$a_01_1 = {4b 00 34 00 6e 00 4e 00 56 00 36 00 4a 00 7a 00 31 00 32 00 36 00 } //1 K4nNV6Jz126
		$a_01_2 = {55 00 65 00 35 00 76 00 30 00 36 00 65 00 35 00 6e 00 51 00 44 00 38 00 48 00 4b 00 42 00 7a 00 4d 00 47 00 74 00 36 00 5a 00 52 00 4b 00 32 00 32 00 32 00 39 00 } //1 Ue5v06e5nQD8HKBzMGt6ZRK2229
		$a_01_3 = {70 00 50 00 63 00 48 00 33 00 6b 00 4b 00 66 00 38 00 67 00 48 00 6c 00 62 00 6c 00 30 00 30 00 4b 00 67 00 46 00 5a 00 34 00 7a 00 36 00 31 00 32 00 35 00 } //1 pPcH3kKf8gHlbl00KgFZ4z6125
		$a_01_4 = {65 00 67 00 35 00 31 00 70 00 6d 00 38 00 63 00 63 00 64 00 37 00 4c 00 62 00 45 00 56 00 64 00 78 00 45 00 58 00 6a 00 53 00 5a 00 61 00 6b 00 62 00 66 00 31 00 30 00 30 00 } //1 eg51pm8ccd7LbEVdxEXjSZakbf100
		$a_01_5 = {51 00 43 00 68 00 65 00 4e 00 65 00 64 00 69 00 39 00 51 00 48 00 63 00 43 00 31 00 79 00 4c 00 55 00 7a 00 55 00 51 00 70 00 33 00 48 00 33 00 6f 00 78 00 66 00 43 00 66 00 43 00 6e 00 31 00 38 00 37 00 } //1 QCheNedi9QHcC1yLUzUQp3H3oxfCfCn187
		$a_00_6 = {00 00 ff 37 eb 0c 00 00 } //1
		$a_00_7 = {00 00 8f 04 18 85 d2 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=6
 
}
rule Trojan_Win32_FormBook_SS_MTB_3{
	meta:
		description = "Trojan:Win32/FormBook.SS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_00_0 = {0f 6e da 66 85 c0 31 f1 85 d2 c3 } //3
		$a_00_1 = {01 d3 81 ff 13 b4 89 b6 66 3d 1a 08 66 81 fa ee 32 09 0b 66 85 db eb 47 } //3
		$a_01_2 = {76 00 54 00 4c 00 68 00 50 00 44 00 48 00 62 00 62 00 43 00 59 00 36 00 75 00 7a 00 41 00 30 00 4d 00 35 00 39 00 62 00 51 00 68 00 46 00 49 00 6d 00 31 00 36 00 38 00 } //1 vTLhPDHbbCY6uzA0M59bQhFIm168
		$a_01_3 = {43 00 53 00 35 00 39 00 50 00 6b 00 47 00 45 00 7a 00 78 00 59 00 6e 00 52 00 79 00 76 00 64 00 69 00 42 00 76 00 34 00 78 00 4f 00 6d 00 67 00 53 00 31 00 35 00 38 00 } //1 CS59PkGEzxYnRyvdiBv4xOmgS158
		$a_01_4 = {66 00 70 00 74 00 68 00 49 00 34 00 71 00 4f 00 6a 00 35 00 6a 00 42 00 4f 00 35 00 34 00 70 00 6f 00 45 00 46 00 57 00 61 00 77 00 4d 00 44 00 36 00 4e 00 56 00 43 00 64 00 39 00 30 00 } //1 fpthI4qOj5jBO54poEFWawMD6NVCd90
		$a_01_5 = {55 00 4d 00 48 00 69 00 47 00 6f 00 68 00 76 00 6a 00 51 00 37 00 46 00 34 00 39 00 4a 00 77 00 48 00 53 00 59 00 4c 00 68 00 44 00 41 00 7a 00 32 00 33 00 30 00 } //1 UMHiGohvjQ7F49JwHSYLhDAz230
		$a_01_6 = {4a 00 52 00 66 00 56 00 50 00 31 00 7a 00 4d 00 38 00 4a 00 51 00 30 00 70 00 65 00 43 00 61 00 4f 00 44 00 51 00 6c 00 54 00 51 00 61 00 4a 00 52 00 4b 00 65 00 74 00 38 00 47 00 6c 00 48 00 35 00 38 00 6b 00 57 00 32 00 48 00 31 00 32 00 38 00 } //1 JRfVP1zM8JQ0peCaODQlTQaJRKet8GlH58kW2H128
		$a_01_7 = {42 00 39 00 64 00 52 00 44 00 79 00 4a 00 6a 00 6e 00 68 00 35 00 30 00 6b 00 77 00 61 00 78 00 4d 00 6b 00 74 00 44 00 7a 00 30 00 44 00 50 00 39 00 58 00 32 00 32 00 32 00 } //1 B9dRDyJjnh50kwaxMktDz0DP9X222
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}