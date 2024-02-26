
rule Trojan_Win32_BlackMoon_ASH_MTB{
	meta:
		description = "Trojan:Win32/BlackMoon.ASH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 33 20 37 44 20 45 38 20 31 30 20 38 42 20 34 35 20 44 34 20 43 37 20 34 35 20 46 43 20 30 38 20 30 30 20 30 30 20 30 30 } //01 00  83 7D E8 10 8B 45 D4 C7 45 FC 08 00 00 00
		$a_01_1 = {40 38 42 20 34 38 20 46 34 20 38 35 20 43 39 20 38 42 20 43 45 20 37 34 20 32 43 } //01 00  @8B 48 F4 85 C9 8B CE 74 2C
		$a_01_2 = {43 36 20 34 35 20 46 43 20 30 34 20 37 32 20 30 35 20 38 42 20 34 30 20 30 34 20 45 42 20 30 33 } //01 00  C6 45 FC 04 72 05 8B 40 04 EB 03
		$a_01_3 = {6c 6f 67 69 6e 64 6c 67 2e 64 6c 6c } //01 00  logindlg.dll
		$a_01_4 = {31 34 2e 31 38 2e 31 34 31 2e 32 37 3a 33 33 33 35 35 2f 6c 63 79 2e 61 73 70 } //00 00  14.18.141.27:33355/lcy.asp
	condition:
		any of ($a_*)
 
}