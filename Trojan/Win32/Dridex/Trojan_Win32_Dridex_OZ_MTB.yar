
rule Trojan_Win32_Dridex_OZ_MTB{
	meta:
		description = "Trojan:Win32/Dridex.OZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {65 73 74 61 70 70 70 45 58 45 } //01 00  estapppEXE
		$a_81_1 = {6e 75 6d 62 65 72 74 68 65 6d } //01 00  numberthem
		$a_81_2 = {74 61 72 74 69 6e 67 50 6c 75 67 69 6e 5a 32 30 31 35 } //01 00  tartingPluginZ2015
		$a_81_3 = {38 46 61 63 65 62 6f 6f 6b 2c 73 57 73 } //01 00  8Facebook,sWs
		$a_81_4 = {70 72 6f 76 69 64 65 73 62 6f 78 33 66 6f 72 61 } //01 00  providesbox3fora
		$a_81_5 = {43 4c 55 53 41 50 49 2e 64 6c 6c } //01 00  CLUSAPI.dll
		$a_81_6 = {78 32 6f 74 66 62 2e 64 6c 6c } //00 00  x2otfb.dll
	condition:
		any of ($a_*)
 
}