
rule Trojan_Win32_Powken_R_MTB{
	meta:
		description = "Trojan:Win32/Powken.R!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 77 00 65 00 72 00 6f 00 66 00 66 00 2e 00 65 00 78 00 65 00 } //1 poweroff.exe
		$a_01_1 = {76 00 65 00 72 00 79 00 73 00 69 00 6c 00 65 00 6e 00 74 00 } //1 verysilent
		$a_01_2 = {63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6e 00 69 00 2e 00 6e 00 65 00 74 00 2f 00 53 00 32 00 53 00 2f 00 44 00 69 00 73 00 63 00 2f 00 44 00 69 00 73 00 63 00 2e 00 70 00 68 00 70 00 } //1 connectini.net/S2S/Disc/Disc.php
		$a_01_3 = {53 00 61 00 6e 00 64 00 62 00 6f 00 78 00 69 00 65 00 } //1 Sandboxie
		$a_01_4 = {49 00 6e 00 74 00 65 00 6c 00 } //1 Intel
		$a_01_5 = {44 00 72 00 57 00 65 00 62 00 } //1 DrWeb
		$a_01_6 = {45 00 53 00 45 00 54 00 } //1 ESET
		$a_01_7 = {41 00 56 00 41 00 53 00 54 00 } //1 AVAST
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}