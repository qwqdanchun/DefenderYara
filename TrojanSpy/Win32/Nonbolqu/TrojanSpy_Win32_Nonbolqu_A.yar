
rule TrojanSpy_Win32_Nonbolqu_A{
	meta:
		description = "TrojanSpy:Win32/Nonbolqu.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 11 00 00 "
		
	strings :
		$a_01_0 = {34 00 37 00 43 00 39 00 36 00 44 00 42 00 30 00 35 00 41 00 46 00 45 00 35 00 45 00 38 00 38 00 42 00 30 00 45 00 32 00 31 00 42 00 44 00 37 00 30 00 45 00 34 00 33 00 38 00 32 00 41 00 33 00 34 00 30 00 38 00 37 00 } //1 47C96DB05AFE5E88B0E21BD70E4382A34087
		$a_01_1 = {32 00 41 00 32 00 38 00 43 00 32 00 36 00 33 00 38 00 36 00 43 00 30 00 31 00 35 00 37 00 45 00 38 00 44 00 43 00 37 00 30 00 39 00 33 00 43 00 45 00 46 00 36 00 43 00 } //1 2A28C26386C0157E8DC7093CEF6C
		$a_01_2 = {42 00 45 00 37 00 31 00 42 00 30 00 34 00 33 00 46 00 34 00 } //1 BE71B043F4
		$a_01_3 = {44 00 37 00 36 00 30 00 39 00 34 00 35 00 34 00 46 00 36 00 } //1 D7609454F6
		$a_01_4 = {33 00 33 00 43 00 43 00 37 00 42 00 42 00 38 00 35 00 30 00 38 00 44 00 39 00 45 00 34 00 33 00 46 00 42 00 36 00 46 00 } //1 33CC7BB8508D9E43FB6F
		$a_01_5 = {33 00 43 00 43 00 37 00 37 00 46 00 46 00 43 00 32 00 43 00 41 00 39 00 32 00 34 00 } //1 3CC77FFC2CA924
		$a_01_6 = {35 00 45 00 39 00 39 00 41 00 46 00 34 00 46 00 46 00 45 00 35 00 43 00 38 00 44 00 34 00 42 00 45 00 30 00 36 00 36 00 46 00 43 00 32 00 44 00 } //1 5E99AF4FFE5C8D4BE066FC2D
		$a_01_7 = {45 00 32 00 36 00 30 00 39 00 30 00 35 00 32 00 46 00 37 00 36 00 43 00 45 00 36 00 30 00 31 00 32 00 45 00 41 00 45 00 32 00 30 00 43 00 42 00 41 00 44 00 31 00 38 00 42 00 37 00 37 00 33 00 41 00 31 00 42 00 43 00 45 00 35 00 36 00 34 00 43 00 45 00 37 00 32 00 38 00 34 00 39 00 30 00 33 00 32 00 41 00 30 00 34 00 36 00 46 00 36 00 32 00 41 00 44 00 33 00 31 00 41 00 } //1 E2609052F76CE6012EAE20CBAD18B773A1BCE564CE72849032A046F62AD31A
		$a_01_8 = {39 00 35 00 39 00 31 00 39 00 34 00 45 00 35 00 30 00 32 00 34 00 33 00 38 00 36 00 41 00 43 00 36 00 43 00 } //1 959194E5024386AC6C
		$a_01_9 = {34 00 42 00 46 00 34 00 33 00 32 00 43 00 32 00 36 00 42 00 45 00 32 00 36 00 35 00 38 00 33 00 42 00 45 00 } //1 4BF432C26BE26583BE
		$a_01_10 = {30 00 34 00 33 00 45 00 43 00 41 00 36 00 35 00 39 00 31 00 43 00 30 00 44 00 44 00 30 00 45 00 33 00 31 00 39 00 35 00 } //1 043ECA6591C0DD0E3195
		$a_01_11 = {46 00 41 00 30 00 37 00 33 00 44 00 46 00 37 00 33 00 43 00 41 00 46 00 46 00 43 00 32 00 39 00 43 00 30 00 30 00 32 00 } //1 FA073DF73CAFFC29C002
		$a_01_12 = {33 00 45 00 45 00 38 00 31 00 46 00 44 00 43 00 31 00 44 00 34 00 43 00 38 00 39 00 41 00 36 00 34 00 30 00 38 00 30 00 } //1 3EE81FDC1D4C89A64080
		$a_01_13 = {37 00 30 00 42 00 41 00 37 00 31 00 38 00 35 00 42 00 42 00 31 00 33 00 34 00 34 00 45 00 36 00 } //1 70BA7185BB1344E6
		$a_01_14 = {43 00 37 00 36 00 32 00 39 00 45 00 35 00 33 00 38 00 45 00 43 00 46 00 30 00 31 00 } //1 C7629E538ECF01
		$a_01_15 = {32 00 33 00 44 00 33 00 31 00 33 00 32 00 35 00 44 00 46 00 36 00 37 00 45 00 30 00 30 00 31 00 33 00 39 00 39 00 41 00 46 00 39 00 36 00 46 00 } //1 23D31325DF67E001399AF96F
		$a_01_16 = {34 00 39 00 43 00 42 00 36 00 46 00 38 00 34 00 42 00 46 00 30 00 30 00 35 00 45 00 38 00 38 00 45 00 34 00 36 00 41 00 46 00 43 00 33 00 36 00 31 00 30 00 36 00 30 00 46 00 34 00 30 00 44 00 33 00 32 00 39 00 33 00 42 00 39 00 31 00 31 00 33 00 30 00 44 00 32 00 36 00 37 00 46 00 46 00 35 00 39 00 46 00 43 00 } //1 49CB6F84BF005E88E46AFC361060F40D3293B91130D267FF59FC
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=8
 
}