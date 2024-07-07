
rule Trojan_Win32_Dridex_NK_MTB{
	meta:
		description = "Trojan:Win32/Dridex.NK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b d2 8b d2 a1 90 01 04 33 90 01 01 c7 05 90 01 08 8b d1 01 15 90 01 04 a1 90 01 04 8b 0d 90 01 04 89 08 5d c3 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Dridex_NK_MTB_2{
	meta:
		description = "Trojan:Win32/Dridex.NK!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 00 6f 00 64 00 65 00 47 00 7a 00 74 00 68 00 65 00 4e 00 70 00 72 00 69 00 76 00 61 00 63 00 79 00 61 00 73 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //1 codeGztheNprivacyasChrome
		$a_01_1 = {68 00 65 00 6e 00 74 00 61 00 69 00 4a 00 63 00 6f 00 64 00 65 00 63 00 73 00 6f 00 66 00 43 00 68 00 72 00 6f 00 6d 00 69 00 75 00 6d 00 2c 00 32 00 30 00 31 00 35 00 2e 00 31 00 38 00 38 00 } //1 hentaiJcodecsofChromium,2015.188
		$a_01_2 = {74 00 6f 00 52 00 63 00 6f 00 2d 00 66 00 6f 00 75 00 6e 00 64 00 65 00 72 00 73 00 77 00 69 00 74 00 68 00 73 00 45 00 61 00 6e 00 64 00 66 00 6f 00 72 00 } //1 toRco-founderswithsEandfor
		$a_01_3 = {72 00 65 00 76 00 69 00 73 00 69 00 6f 00 6e 00 73 00 30 00 30 00 30 00 30 00 30 00 30 00 31 00 49 00 6f 00 66 00 66 00 65 00 72 00 79 00 } //1 revisions0000001Ioffery
		$a_01_4 = {63 00 61 00 6e 00 5a 00 78 00 6e 00 6f 00 74 00 65 00 35 00 42 00 39 00 68 00 4c 00 69 00 6e 00 75 00 78 00 73 00 65 00 6e 00 64 00 69 00 6e 00 67 00 } //1 canZxnote5B9hLinuxsending
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_Dridex_NK_MTB_3{
	meta:
		description = "Trojan:Win32/Dridex.NK!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 69 00 76 00 61 00 63 00 79 00 73 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 59 00 53 00 65 00 70 00 74 00 65 00 6d 00 62 00 65 00 72 00 74 00 6f 00 71 00 4a 00 61 00 6e 00 75 00 61 00 72 00 79 00 56 00 } //1 PrivacysprovideYSeptembertoqJanuaryV
		$a_01_1 = {77 00 41 00 6e 00 6e 00 6f 00 75 00 6e 00 63 00 65 00 6d 00 65 00 6e 00 74 00 78 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 61 00 6e 00 64 00 74 00 6f 00 61 00 53 00 74 00 61 00 62 00 6c 00 65 00 44 00 } //1 wAnnouncementxabilityandtoaStableD
		$a_01_2 = {58 51 74 68 65 49 6e 74 65 72 6e 65 74 74 6f 61 63 6f 6e 66 69 6e 65 64 6c 61 79 6f 75 74 69 74 73 45 6e 67 6c 61 6e 64 } //1 XQtheInternettoaconfinedlayoutitsEngland
		$a_01_3 = {6c 61 75 6e 63 68 65 64 4d 6f 64 65 65 31 5a 70 61 74 68 6f 6c 6f 67 79 77 68 61 74 65 76 65 72 78 72 6f 62 65 72 74 72 65 66 6c 65 63 74 73 } //1 launchedModee1Zpathologywhateverxrobertreflects
		$a_01_4 = {6f 00 69 00 6e 00 63 00 6f 00 67 00 6e 00 69 00 74 00 6f 00 36 00 66 00 72 00 6f 00 6d 00 51 00 } //1 oincognito6fromQ
		$a_01_5 = {62 00 65 00 74 00 61 00 61 00 74 00 61 00 62 00 6c 00 65 00 74 00 73 00 7a 00 72 00 32 00 74 00 68 00 65 00 42 00 72 00 61 00 6e 00 63 00 68 00 } //1 betaatabletszr2theBranch
		$a_01_6 = {32 00 33 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 2c 00 74 00 6f 00 74 00 61 00 6b 00 65 00 43 00 68 00 72 00 6f 00 6d 00 65 00 72 00 73 00 75 00 70 00 65 00 72 00 6d 00 61 00 6e 00 52 00 4c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //1 23default,totakeChromersupermanRLChrome
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}