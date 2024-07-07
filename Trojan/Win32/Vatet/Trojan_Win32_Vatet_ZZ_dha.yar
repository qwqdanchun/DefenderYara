
rule Trojan_Win32_Vatet_ZZ_dha{
	meta:
		description = "Trojan:Win32/Vatet.ZZ!dha,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 08 00 00 "
		
	strings :
		$a_03_0 = {68 00 00 00 80 68 90 01 04 ff 15 90 02 90 80 34 90 01 01 fe 40 3b 90 01 01 72 f7 90 00 } //1
		$a_03_1 = {68 00 00 00 80 68 90 02 0c ff 15 90 02 90 80 34 90 01 01 fa 40 3b 90 01 01 72 f7 90 00 } //1
		$a_03_2 = {68 00 00 00 80 68 90 02 0c ff 15 90 02 90 8a 90 02 34 90 01 01 2c 90 01 01 88 90 01 03 3b 90 01 01 72 f1 90 02 20 68 90 01 04 ff 15 90 00 } //1
		$a_03_3 = {68 00 00 00 80 68 90 02 0c ff 15 90 02 90 8a 90 02 34 90 01 01 2c 90 01 01 34 90 01 01 88 90 01 03 3b 90 01 01 72 90 00 } //1
		$a_03_4 = {68 00 00 00 80 68 90 02 0c ff 15 90 02 90 8a 90 01 02 90 02 02 34 90 01 01 90 02 02 34 90 01 01 88 90 01 03 3b 90 01 01 72 90 00 } //1
		$a_03_5 = {68 00 00 00 80 68 90 02 20 ff 15 90 02 b0 88 90 01 03 3b 90 01 01 72 90 0a 50 00 8a 90 02 04 34 90 01 03 34 90 01 03 34 90 01 03 34 90 01 03 34 90 00 } //1
		$a_03_6 = {68 00 00 00 80 68 90 02 20 ff 15 90 02 fe 88 90 02 09 3b 90 01 01 72 90 0a 90 00 8a 90 02 04 90 03 01 01 32 34 90 01 03 90 03 01 01 32 34 90 01 03 90 03 01 01 32 34 90 00 } //1
		$a_03_7 = {68 00 00 00 80 68 90 02 20 ff 15 90 08 80 01 88 90 02 09 3b 90 01 01 72 90 0a 90 00 8a 90 02 04 90 03 01 01 32 34 90 01 03 90 03 01 01 32 34 90 01 03 90 03 01 01 32 34 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=1
 
}