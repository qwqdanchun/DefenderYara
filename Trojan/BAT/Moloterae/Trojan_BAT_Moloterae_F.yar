
rule Trojan_BAT_Moloterae_F{
	meta:
		description = "Trojan:BAT/Moloterae.F,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 00 75 00 61 00 72 00 64 00 4d 00 61 00 69 00 6c 00 52 00 75 00 } //01 00  GuardMailRu
		$a_01_1 = {22 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 2e 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 2e 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 22 00 } //01 00  "browser.startup.homepage"
		$a_01_2 = {75 00 72 00 6c 00 73 00 5f 00 74 00 6f 00 5f 00 72 00 65 00 73 00 74 00 6f 00 72 00 65 00 5f 00 6f 00 6e 00 5f 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 } //01 00  urls_to_restore_on_startup
		$a_01_3 = {43 68 72 6f 6d 65 5f 6b 69 6c 6c 00 } //01 00  桃潲敭歟汩l
		$a_01_4 = {4b 69 6c 6c 65 72 5f 46 6f 6c 64 65 72 00 } //01 00  楋汬牥䙟汯敤r
		$a_01_5 = {50 72 6f 63 63 65 73 73 5f 44 69 65 00 } //01 00 
		$a_01_6 = {76 5f 4f 6d 6e 69 62 6f 78 00 } //00 00  彶浏楮潢x
		$a_00_7 = {5d 04 00 00 } //f1 0f 
	condition:
		any of ($a_*)
 
}