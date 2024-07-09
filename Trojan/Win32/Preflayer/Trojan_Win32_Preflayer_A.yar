
rule Trojan_Win32_Preflayer_A{
	meta:
		description = "Trojan:Win32/Preflayer.A,SIGNATURE_TYPE_PEHSTR_EXT,17 00 16 00 08 00 00 "
		
	strings :
		$a_03_0 = {2a 20 59 4f 55 52 20 42 52 4f 57 53 45 52 20 48 4f 4d 45 50 41 47 45 [0-20] 57 49 4c 4c 20 43 48 41 4e 47 45 20 57 49 54 48 [0-15] 49 46 20 59 4f 55 20 41 43 43 45 50 54 20 54 48 49 53 2c 20 50 4c 45 41 53 45 20 43 4f 4e 54 49 4e 55 45 2e } //5
		$a_01_1 = {41 44 4f 42 45 20 53 48 41 4c 4c 20 4e 4f 54 20 42 45 20 4c 49 41 42 4c 45 20 54 4f 20 59 4f 55 20 4f 52 20 41 4e 59 20 4f 54 48 45 52 20 50 41 52 54 59 } //5 ADOBE SHALL NOT BE LIABLE TO YOU OR ANY OTHER PARTY
		$a_03_2 = {46 00 69 00 72 00 65 00 66 00 6f 00 78 00 ?? ?? ?? ?? ?? ?? 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 ?? ?? ?? ?? ?? ?? 43 00 68 00 72 00 6f 00 6d 00 65 00 ?? ?? ?? ?? ?? ?? ?? ?? 59 00 61 00 6e 00 64 00 65 00 78 00 } //5
		$a_01_3 = {27 69 20 79 fc 6b 6c 65 6d 65 6b 20 69 e7 69 6e 20 6c fc 74 66 65 6e 20 27 69 6c 65 72 69 27 20 62 75 74 6f 6e 75 6e 61 } //5
		$a_01_4 = {46 6c 61 73 68 50 6c 61 79 65 72 31 31 2e 65 78 65 } //2 FlashPlayer11.exe
		$a_01_5 = {46 00 6c 00 61 00 73 00 68 00 50 00 6c 00 61 00 79 00 65 00 72 00 31 00 31 00 2e 00 65 00 78 00 65 00 } //2 FlashPlayer11.exe
		$a_00_6 = {68 65 79 64 65 78 2e 63 6f 6d } //1 heydex.com
		$a_00_7 = {61 6e 61 73 61 79 66 61 64 61 2e 6e 65 74 } //1 anasayfada.net
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*5+(#a_03_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=22
 
}