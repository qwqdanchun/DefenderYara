
rule Trojan_Linux_MpTest_A{
	meta:
		description = "Trojan:Linux/MpTest.A,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 35 64 32 62 66 38 36 38 2d 32 63 33 61 2d 34 30 38 38 2d 39 64 33 61 2d 31 30 34 30 63 34 34 32 30 66 66 30 } //1 a5d2bf868-2c3a-4088-9d3a-1040c4420ff0
		$a_01_1 = {30 62 63 63 36 63 31 37 2d 37 30 39 31 2d 34 32 35 66 2d 61 64 63 63 2d 39 39 31 30 34 35 66 64 38 31 36 36 } //1 0bcc6c17-7091-425f-adcc-991045fd8166
		$a_01_2 = {33 37 64 32 37 38 65 38 2d 36 65 63 33 2d 34 33 36 36 2d 61 30 66 38 2d 63 30 39 39 62 32 37 35 64 31 34 37 } //1 37d278e8-6ec3-4366-a0f8-c099b275d147
		$a_01_3 = {30 62 61 66 30 66 39 32 2d 33 34 37 65 2d 34 37 38 62 2d 62 64 61 30 2d 31 36 65 38 37 33 36 37 63 65 32 37 } //1 0baf0f92-347e-478b-bda0-16e87367ce27
		$a_01_4 = {61 32 35 38 38 33 34 30 2d 36 39 33 62 2d 34 36 33 38 2d 38 37 64 64 2d 38 64 36 66 34 30 33 32 32 33 31 34 } //1 a2588340-693b-4638-87dd-8d6f40322314
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Linux_MpTest_A_2{
	meta:
		description = "Trojan:Linux/MpTest.A,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {36 38 63 31 33 39 64 39 2d 39 64 64 33 2d 34 37 64 32 2d 61 32 63 33 2d 30 62 35 65 66 36 33 35 34 31 61 30 } //1 68c139d9-9dd3-47d2-a2c3-0b5ef63541a0
		$a_00_1 = {39 30 62 64 32 38 61 33 2d 34 33 33 66 2d 34 39 38 61 2d 62 34 37 66 2d 33 36 62 34 37 32 37 39 32 35 65 39 } //1 90bd28a3-433f-498a-b47f-36b4727925e9
		$a_00_2 = {33 39 63 33 39 30 39 38 2d 33 61 37 66 2d 34 33 62 30 2d 39 32 30 36 2d 30 37 35 63 36 36 31 31 31 35 36 30 } //1 39c39098-3a7f-43b0-9206-075c66111560
		$a_00_3 = {34 31 33 30 34 64 62 36 2d 33 37 30 62 2d 34 61 32 31 2d 39 39 37 32 2d 36 62 62 32 39 37 62 32 66 66 35 64 } //1 41304db6-370b-4a21-9972-6bb297b2ff5d
		$a_00_4 = {64 64 38 62 30 30 65 39 2d 61 66 38 36 2d 34 36 31 37 2d 38 65 35 65 2d 33 39 37 63 32 34 32 64 39 38 62 30 } //1 dd8b00e9-af86-4617-8e5e-397c242d98b0
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
rule Trojan_Linux_MpTest_A_3{
	meta:
		description = "Trojan:Linux/MpTest.A,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {32 31 31 31 39 66 62 37 2d 37 36 33 63 2d 34 30 30 64 2d 62 31 38 38 2d 65 65 34 32 32 61 31 63 65 63 38 31 } //1 21119fb7-763c-400d-b188-ee422a1cec81
		$a_00_1 = {63 30 31 63 62 62 37 64 2d 36 61 35 64 2d 34 35 35 30 2d 62 37 30 64 2d 62 61 64 66 33 37 37 37 30 33 64 34 } //1 c01cbb7d-6a5d-4550-b70d-badf377703d4
		$a_00_2 = {31 32 39 34 63 37 61 66 2d 37 62 38 63 2d 34 36 66 31 2d 38 61 38 66 2d 31 32 65 33 34 65 39 66 64 36 36 62 } //1 1294c7af-7b8c-46f1-8a8f-12e34e9fd66b
		$a_00_3 = {31 37 66 36 37 36 35 66 2d 34 64 39 65 2d 34 32 62 33 2d 38 35 38 32 2d 64 35 64 36 34 64 39 62 34 34 38 31 } //1 17f6765f-4d9e-42b3-8582-d5d64d9b4481
		$a_00_4 = {36 62 31 36 39 35 38 36 2d 31 33 36 34 2d 34 35 61 61 2d 38 31 63 31 2d 61 37 35 36 38 61 64 32 31 62 61 38 } //1 6b169586-1364-45aa-81c1-a7568ad21ba8
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}