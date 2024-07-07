
rule Trojan_Win32_Kilim_L{
	meta:
		description = "Trojan:Win32/Kilim.L,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 78 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 77 00 2f 00 43 00 72 00 78 00 78 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 74 00 78 00 74 00 } //1 http://crxupdate.pw/Crxx/update.txt
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 78 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 77 00 2f 00 43 00 72 00 78 00 78 00 2f 00 62 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 2e 00 6a 00 73 00 } //1 http://crxupdate.pw/Crxx/background.js
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 78 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 77 00 2f 00 43 00 72 00 78 00 78 00 2f 00 66 00 6c 00 61 00 73 00 68 00 2e 00 78 00 70 00 69 00 } //1 http://crxupdate.pw/Crxx/flash.xpi
		$a_01_3 = {63 00 72 00 79 00 77 00 61 00 72 00 65 00 40 00 6f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 } //1 cryware@outlook.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}