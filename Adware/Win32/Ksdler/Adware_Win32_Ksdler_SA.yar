
rule Adware_Win32_Ksdler_SA{
	meta:
		description = "Adware:Win32/Ksdler.SA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 72 6d 5f 4b 73 44 6c 65 72 53 70 6c 61 73 68 } //01 00  Frm_KsDlerSplash
		$a_01_1 = {57 65 62 42 72 6f 77 73 65 72 5f 62 79 57 41 4e 47 52 55 49 } //01 00  WebBrowser_byWANGRUI
		$a_01_2 = {50 49 6e 69 41 64 73 4d 61 6e 61 67 65 72 } //01 00  PIniAdsManager
		$a_01_3 = {62 00 61 00 72 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 64 00 6c 00 6c 00 } //01 00  barclient.dll
		$a_01_4 = {77 00 79 00 70 00 74 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 78 00 7a 00 71 00 2f 00 } //00 00  wyptk.com/xzq/
	condition:
		any of ($a_*)
 
}