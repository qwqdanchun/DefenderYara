
rule Adware_AndroidOS_MobiDash_C_MTB{
	meta:
		description = "Adware:AndroidOS/MobiDash.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {38 02 1c 00 71 00 ?? ?? 00 00 71 00 ?? ?? 00 00 12 02 67 02 ?? ?? 22 02 93 00 1c 03 ?? ?? 70 30 16 03 42 03 6e 20 ?? ?? 24 00 6e 10 ?? ?? 04 00 71 00 ?? ?? 00 00 0e 00 22 01 95 07 } //1
		$a_01_1 = {63 6f 6d 2f 6e 75 70 75 69 74 2f 70 6d 70 31 2f 61 63 74 69 76 69 74 79 } //1 com/nupuit/pmp1/activity
		$a_01_2 = {4d 6f 62 69 6c 65 41 64 73 } //1 MobileAds
		$a_01_3 = {35 39 33 30 65 64 61 38 63 66 61 35 61 62 33 39 30 38 30 30 31 35 34 30 } //1 5930eda8cfa5ab3908001540
		$a_01_4 = {6d 49 6e 74 65 72 73 74 69 74 69 61 6c 41 64 } //1 mInterstitialAd
		$a_01_5 = {44 65 78 43 6c 61 73 73 4c 6f 61 64 65 72 } //1 DexClassLoader
		$a_03_6 = {63 6f 6d 2f 6e 75 70 75 69 74 2f [0-20] 61 63 74 69 76 69 74 79 2f 4d 6f 63 6b 75 70 41 63 74 69 76 69 74 79 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1) >=7
 
}