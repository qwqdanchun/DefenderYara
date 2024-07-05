
rule Trojan_Win32_Fragtor_NFR_MTB{
	meta:
		description = "Trojan:Win32/Fragtor.NFR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {47 00 4d 00 55 00 69 00 2e 00 52 00 75 00 6e 00 } //02 00  GMUi.Run
		$a_01_1 = {69 00 55 00 71 00 6d 00 2e 00 72 00 65 00 70 00 } //02 00  iUqm.rep
		$a_01_2 = {4f 00 57 00 6a 00 75 00 78 00 44 00 } //00 00  OWjuxD
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fragtor_NFR_MTB_2{
	meta:
		description = "Trojan:Win32/Fragtor.NFR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6e 70 65 6e 2e 62 61 74 } //01 00  conpen.bat
		$a_01_1 = {68 61 6f 2e 77 7a 31 39 34 39 2e 63 6f 6d } //01 00  hao.wz1949.com
		$a_01_2 = {70 69 70 69 5f 64 61 65 5f 34 37 33 2e 65 78 65 } //01 00  pipi_dae_473.exe
		$a_01_3 = {68 68 6d 6d 73 73 7a 7a 7a 2e 69 6e 69 } //01 00  hhmmsszzz.ini
		$a_01_4 = {66 6a 69 65 6a 2e 6c 6f 67 } //00 00  fjiej.log
	condition:
		any of ($a_*)
 
}