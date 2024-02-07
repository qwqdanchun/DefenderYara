
rule Trojan_Win64_Shelm_MD_MTB{
	meta:
		description = "Trojan:Win64/Shelm.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {6c 73 7a 74 6a 75 77 6c 6a 6b 6a 6e 76 79 6a 72 6f 71 65 71 73 79 71 64 64 73 74 72 62 72 75 65 } //02 00  lsztjuwljkjnvyjroqeqsyqddstrbrue
		$a_01_1 = {6a 6e 6e 66 63 6f 79 2e 63 70 6c } //02 00  jnnfcoy.cpl
		$a_01_2 = {4e 69 6d 4d 61 69 6e } //01 00  NimMain
		$a_01_3 = {44 6c 6c 49 6e 73 74 61 6c 6c } //01 00  DllInstall
		$a_01_4 = {44 6c 6c 4d 61 69 6e } //01 00  DllMain
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_01_6 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //00 00  DllUnregisterServer
	condition:
		any of ($a_*)
 
}