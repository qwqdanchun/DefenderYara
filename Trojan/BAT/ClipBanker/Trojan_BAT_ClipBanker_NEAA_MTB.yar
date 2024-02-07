
rule Trojan_BAT_ClipBanker_NEAA_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {33 31 39 64 35 61 38 32 2d 35 38 66 65 2d 34 63 66 36 2d 62 38 63 36 2d 65 32 31 35 38 34 36 38 31 39 34 66 } //02 00  319d5a82-58fe-4cf6-b8c6-e2158468194f
		$a_01_1 = {36 32 45 36 46 31 33 42 35 33 44 36 37 46 44 44 37 38 30 45 32 30 44 38 39 41 36 45 38 45 45 35 30 33 42 31 39 37 41 43 31 36 41 43 33 46 31 44 32 35 37 31 43 31 34 37 46 44 44 33 32 34 43 39 } //02 00  62E6F13B53D67FDD780E20D89A6E8EE503B197AC16AC3F1D2571C147FDD324C9
		$a_01_2 = {73 65 71 32 63 52 31 70 76 64 4a 54 33 4c 65 77 75 49 4e } //02 00  seq2cR1pvdJT3LewuIN
		$a_01_3 = {4c 64 63 5f 49 34 5f 4d 31 } //02 00  Ldc_I4_M1
		$a_01_4 = {75 61 52 55 37 34 4e 77 4b 4c } //02 00  uaRU74NwKL
		$a_01_5 = {58 50 64 72 69 76 65 72 2e 65 78 65 } //02 00  XPdriver.exe
		$a_01_6 = {70 5a 62 6e 68 76 36 59 42 } //00 00  pZbnhv6YB
	condition:
		any of ($a_*)
 
}