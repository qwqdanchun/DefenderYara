
rule Trojan_Win64_RMMTactical_A_MTB{
	meta:
		description = "Trojan:Win64/RMMTactical.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {67 69 74 68 75 62 2e 63 6f 6d 2f 77 68 31 74 65 39 30 39 2f 72 6d 6d 61 67 65 6e 74 2f 72 65 6c 65 61 73 65 73 2f 64 6f 77 6e 6c 6f 61 64 2f 76 31 2e 90 01 01 2e 30 2f 77 69 6e 61 67 65 6e 74 2d 76 31 2e 90 01 01 2e 30 2e 65 78 65 90 00 } //1
		$a_01_1 = {54 00 61 00 63 00 74 00 69 00 63 00 61 00 6c 00 20 00 52 00 4d 00 4d 00 20 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 } //1 Tactical RMM Installer
		$a_01_2 = {76 00 32 00 2e 00 30 00 2e 00 33 00 2e 00 30 00 } //1 v2.0.3.0
		$a_01_3 = {72 00 6d 00 6d 00 2e 00 65 00 78 00 65 00 } //1 rmm.exe
		$a_01_4 = {69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 2e 00 67 00 6f 00 } //1 installer.go
		$a_01_5 = {31 32 37 38 42 45 48 49 4a 4f 51 58 5a 5c 62 65 78 7a } //1 1278BEHIJOQXZ\bexz
		$a_01_6 = {41 00 6d 00 69 00 64 00 61 00 57 00 61 00 72 00 65 00 20 00 4c 00 4c 00 43 00 } //1 AmidaWare LLC
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}