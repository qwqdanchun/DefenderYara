
rule Trojan_BAT_Swrort_B_MTB{
	meta:
		description = "Trojan:BAT/Swrort.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {13 30 03 00 32 00 00 00 03 00 00 11 28 03 00 00 06 0a 20 10 27 00 00 28 ?? 00 00 0a 28 03 00 00 06 0b 06 1f 32 2f 09 06 1f 0a 58 07 2e 0e 17 2a 1f 3c 06 59 1f 0a 07 59 2e 02 17 2a 16 2a } //1
		$a_02_1 = {13 30 04 00 32 00 00 00 06 00 00 11 28 ?? 00 00 0a 0b 12 01 28 ?? 00 00 0a 16 28 ?? 00 00 0a 73 ?? 00 00 0a 0a 7e ?? 00 00 04 06 16 1f 19 6f ?? 00 00 0a 8f ?? 00 00 01 28 ?? 00 00 0a 2a } //1
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 32 00 32 00 2e 00 31 00 33 00 39 00 2e 00 31 00 35 00 31 00 2e 00 31 00 31 00 34 00 2f 00 6c 00 6f 00 67 00 73 00 2f 00 53 00 6f 00 6e 00 67 00 2f 00 6f 00 66 00 66 00 69 00 63 00 65 00 75 00 70 00 64 00 61 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 } //1 http://222.139.151.114/logs/Song/officeupdatem.exe
		$a_01_3 = {4f 00 66 00 66 00 69 00 63 00 65 00 20 00 43 00 6c 00 69 00 63 00 6b 00 54 00 6f 00 52 00 75 00 6e 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 73 00 } //1 Office ClickToRun Service Update Monitors
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}