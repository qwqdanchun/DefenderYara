
rule Trojan_Win32_Guloader_SPDD_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SPDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {6e 00 70 00 70 00 65 00 2e 00 68 00 6f 00 73 00 } //1 nppe.hos
		$a_01_1 = {68 00 6f 00 72 00 6e 00 69 00 73 00 74 00 73 00 2e 00 69 00 6e 00 69 00 } //1 hornists.ini
		$a_01_2 = {4b 00 61 00 75 00 6b 00 61 00 73 00 69 00 65 00 72 00 65 00 73 00 36 00 34 00 2e 00 73 00 65 00 6d 00 } //1 Kaukasieres64.sem
		$a_01_3 = {61 00 6e 00 64 00 65 00 6c 00 73 00 6b 00 61 00 70 00 69 00 74 00 61 00 6c 00 65 00 72 00 73 00 2e 00 74 00 61 00 72 00 } //1 andelskapitalers.tar
		$a_01_4 = {73 00 6b 00 72 00 69 00 76 00 65 00 62 00 6f 00 72 00 64 00 73 00 74 00 65 00 73 00 74 00 65 00 6e 00 } //1 skrivebordstesten
		$a_01_5 = {67 00 65 00 73 00 69 00 74 00 68 00 63 00 75 00 6e 00 64 00 6d 00 61 00 6e 00 2e 00 74 00 72 00 61 00 } //1 gesithcundman.tra
		$a_01_6 = {63 00 69 00 6e 00 65 00 70 00 68 00 6f 00 74 00 6f 00 6d 00 69 00 63 00 72 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 2e 00 72 00 65 00 76 00 } //1 cinephotomicrography.rev
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}