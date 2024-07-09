
rule Trojan_BAT_Spacekito_E{
	meta:
		description = "Trojan:BAT/Spacekito.E,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {56 65 72 69 66 79 49 45 00 49 6e 73 74 61 6c 6c 44 6c 6c 49 45 00 66 69 6c 65 65 78 65 } //1
		$a_01_1 = {6d 5f 50 6c 75 67 69 6e 55 52 4c 00 6d 5f 63 66 67 5f 63 6f 6e 74 65 6e 74 00 64 69 72 4f 75 74 70 75 74 } //1
		$a_01_2 = {5c 00 45 00 78 00 74 00 5c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 7b 00 43 00 36 00 38 00 41 00 45 00 39 00 43 00 30 00 2d 00 30 00 39 00 30 00 39 00 2d 00 34 00 44 00 44 00 43 00 2d 00 42 00 36 00 36 00 31 00 2d 00 43 00 31 00 41 00 46 00 42 00 39 00 46 00 35 00 41 00 45 00 35 00 33 00 7d 00 } //1 \Ext\Settings\{C68AE9C0-0909-4DDC-B661-C1AFB9F5AE53}
		$a_03_3 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 [0-80] 70 00 6c 00 75 00 67 00 69 00 6e 00 49 00 45 00 2e 00 7a 00 69 00 70 00 } //1
		$a_03_4 = {75 00 70 00 64 00 61 00 74 00 65 00 ?? ?? 2e 00 7a 00 69 00 70 00 [0-80] 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 } //1
		$a_03_5 = {49 00 67 00 6e 00 6f 00 72 00 65 00 46 00 72 00 61 00 6d 00 65 00 41 00 70 00 70 00 72 00 6f 00 76 00 61 00 6c 00 43 00 68 00 65 00 63 00 6b 00 ?? ?? 31 00 } //1
		$a_01_6 = {63 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 5f 00 73 00 75 00 62 00 69 00 64 00 } //1 channel_subid
		$a_01_7 = {75 00 73 00 65 00 72 00 5f 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 } //1 user_antivirus
		$a_03_8 = {70 00 6c 00 75 00 67 00 69 00 6e 00 49 00 45 00 [0-90] 2e 00 64 00 6c 00 6c 00 ?? ?? 63 00 6f 00 6e 00 66 00 69 00 67 00 } //1
		$a_01_9 = {45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 49 00 45 00 2e 00 65 00 78 00 65 00 } //1 ExtensionIE.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}