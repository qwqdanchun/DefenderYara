
rule Trojan_BAT_SpyFront_A_MSR{
	meta:
		description = "Trojan:BAT/SpyFront.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 09 00 00 "
		
	strings :
		$a_00_0 = {6a 00 6f 00 6d 00 61 00 63 00 6f 00 71 00 75 00 69 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //5 jomacoqui@gmail.com
		$a_00_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 63 00 68 00 72 00 6f 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //5 cmd /c taskkill /f /im chrome.exe
		$a_00_2 = {53 00 63 00 72 00 65 00 65 00 6e 00 42 00 6f 00 6f 00 6b 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 ScreenBooking.exe
		$a_00_3 = {52 00 65 00 76 00 65 00 6e 00 67 00 65 00 40 00 32 00 2e 00 30 00 2e 00 65 00 78 00 65 00 } //1 Revenge@2.0.exe
		$a_00_4 = {53 65 6e 64 42 6c 61 73 74 65 72 } //1 SendBlaster
		$a_00_5 = {52 65 76 65 6e 67 65 40 32 2e 30 2e 70 64 62 } //1 Revenge@2.0.pdb
		$a_00_6 = {53 00 63 00 72 00 65 00 65 00 6e 00 42 00 6f 00 6f 00 6b 00 69 00 6e 00 67 00 46 00 49 00 4e 00 41 00 4c 00 2e 00 65 00 78 00 65 00 } //1 ScreenBookingFINAL.exe
		$a_00_7 = {63 61 70 74 75 72 61 54 65 6c 61 2e 4d 79 } //5 capturaTela.My
		$a_02_8 = {0c 17 0d 72 ?? ?? ?? ?? 13 04 02 28 ?? ?? ?? ?? 13 05 17 13 06 2b 49 09 08 fe 01 13 07 11 07 2c 02 17 0d 03 09 17 28 2f 00 00 0a 28 30 00 00 0a 0b 11 04 02 11 06 17 28 2f 00 00 0a 28 30 00 00 0a 07 08 d8 da 28 31 00 00 0a 28 32 00 00 0a 28 33 00 00 0a 13 04 09 17 d6 0d 11 06 17 d6 13 06 11 06 11 05 31 b1 28 34 00 00 0a 11 04 28 ?? ?? ?? ?? 16 11 04 6f ?? ?? ?? ?? 6f ?? ?? ?? ?? 0a 2b 00 06 2a } //10
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*5+(#a_02_8  & 1)*10) >=10
 
}