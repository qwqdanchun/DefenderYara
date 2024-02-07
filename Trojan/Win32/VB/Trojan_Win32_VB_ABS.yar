
rule Trojan_Win32_VB_ABS{
	meta:
		description = "Trojan:Win32/VB.ABS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 5a 00 68 00 75 00 44 00 6f 00 6e 00 67 00 46 00 61 00 6e 00 67 00 79 00 75 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill /f /im ZhuDongFangyu.exe
		$a_01_1 = {73 00 68 00 65 00 6e 00 6a 00 69 00 6e 00 67 00 79 00 75 00 61 00 6e 00 69 00 65 00 35 00 32 00 30 00 } //01 00  shenjingyuanie520
		$a_01_2 = {78 00 75 00 6a 00 69 00 61 00 2e 00 72 00 65 00 67 00 } //01 00  xujia.reg
		$a_01_3 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 2e 00 68 00 75 00 6f 00 } //01 00  \Mozilla Firefox.huo
		$a_01_4 = {5c 00 7e 81 af 8b 54 00 54 00 2e 00 54 00 54 } //00 00 
	condition:
		any of ($a_*)
 
}