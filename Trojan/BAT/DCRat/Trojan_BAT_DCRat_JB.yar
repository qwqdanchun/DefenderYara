
rule Trojan_BAT_DCRat_JB{
	meta:
		description = "Trojan:BAT/DCRat.JB,SIGNATURE_TYPE_PEHSTR_EXT,fffffffa 00 fffffffa 00 05 00 00 32 00 "
		
	strings :
		$a_01_0 = {49 00 43 00 42 00 66 00 58 00 31 00 38 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 41 00 67 00 49 00 46 00 38 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 42 00 66 00 58 00 31 00 38 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 41 00 67 00 58 00 79 00 41 00 67 00 49 00 43 00 41 00 67 00 49 00 43 00 41 00 67 00 58 00 79 00 41 00 67 00 49 00 46 00 39 00 66 00 58 00 79 00 41 00 67 00 49 00 43 00 42 00 66 00 49 00 46 00 39 00 66 00 58 00 31 00 39 00 66 00 49 00 41 00 30 00 } //32 00  ICBfX18gICAgICAgICAgIF8gICAgICBfX18gICAgICAgICAgICAgXyAgICAgICAgXyAgIF9fXyAgICBfIF9fX19fIA0
		$a_01_1 = {46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 6c 00 6f 00 61 00 64 00 20 00 74 00 68 00 65 00 20 00 70 00 6c 00 75 00 67 00 69 00 6e 00 } //32 00  Failed to load the plugin
		$a_01_2 = {50 00 6c 00 75 00 67 00 69 00 6e 00 20 00 63 00 6f 00 75 00 6c 00 64 00 6e 00 27 00 74 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 74 00 68 00 69 00 73 00 20 00 61 00 63 00 74 00 69 00 6f 00 6e 00 21 00 } //32 00  Plugin couldn't process this action!
		$a_01_3 = {55 00 6e 00 6b 00 6e 00 6f 00 77 00 6e 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 21 00 20 00 4d 00 61 00 79 00 62 00 65 00 20 00 61 00 20 00 70 00 6c 00 75 00 67 00 69 00 6e 00 20 00 69 00 73 00 20 00 72 00 65 00 71 00 75 00 69 00 72 00 65 00 64 00 3f 00 } //32 00  Unknown command! Maybe a plugin is required?
		$a_01_4 = {44 00 43 00 52 00 61 00 74 00 2e 00 43 00 6f 00 64 00 65 00 } //00 00  DCRat.Code
	condition:
		any of ($a_*)
 
}