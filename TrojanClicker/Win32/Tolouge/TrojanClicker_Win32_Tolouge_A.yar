
rule TrojanClicker_Win32_Tolouge_A{
	meta:
		description = "TrojanClicker:Win32/Tolouge.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 68 61 63 65 72 43 6c 69 63 6b 00 } //1 栀捡牥汃捩k
		$a_01_1 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 75 00 73 00 75 00 61 00 72 00 69 00 6f 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 66 00 61 00 62 00 72 00 65 00 5c 00 61 00 75 00 74 00 6f 00 43 00 6c 00 69 00 63 00 6b 00 2e 00 76 00 62 00 70 00 00 00 } //1
		$a_03_2 = {8d 4e 44 88 46 50 66 89 5e 34 ff 15 90 01 04 66 c7 46 3a 73 00 66 c7 46 3c 9b 00 66 c7 46 3e 0a 00 66 c7 46 40 0e 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}