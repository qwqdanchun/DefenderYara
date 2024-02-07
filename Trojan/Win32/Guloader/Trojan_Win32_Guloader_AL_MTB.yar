
rule Trojan_Win32_Guloader_AL_MTB{
	meta:
		description = "Trojan:Win32/Guloader.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {f8 81 dc fc 01 00 00 40 55 89 e5 e8 00 00 00 00 58 83 e8 10 89 45 44 e8 90 01 02 00 00 e9 90 01 01 00 00 90 00 } //01 00 
		$a_03_1 = {31 10 f8 83 c0 04 39 d8 0f 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_2 = {64 8b 1d c0 00 00 00 81 fe 90 01 04 83 fb 00 74 26 eb 25 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Guloader_AL_MTB_2{
	meta:
		description = "Trojan:Win32/Guloader.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 72 00 75 00 6e 00 73 00 74 00 74 00 69 00 64 00 73 00 5c 00 42 00 69 00 67 00 66 00 65 00 65 00 74 00 5c 00 45 00 72 00 68 00 76 00 65 00 72 00 76 00 73 00 68 00 6d 00 6d 00 65 00 64 00 65 00 73 00 33 00 33 00 5c 00 53 00 79 00 6e 00 63 00 73 00 2e 00 54 00 69 00 62 00 } //01 00  Brunsttids\Bigfeet\Erhvervshmmedes33\Syncs.Tib
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 44 00 65 00 6d 00 6f 00 6e 00 69 00 61 00 73 00 74 00 5c 00 4e 00 6f 00 6e 00 63 00 72 00 65 00 64 00 69 00 62 00 69 00 6c 00 69 00 74 00 79 00 5c 00 49 00 6e 00 73 00 75 00 66 00 66 00 69 00 63 00 69 00 65 00 6e 00 73 00 65 00 72 00 73 00 } //01 00  Software\Demoniast\Noncredibility\Insufficiensers
		$a_01_2 = {52 00 6f 00 77 00 65 00 5c 00 57 00 69 00 6c 00 62 00 65 00 72 00 74 00 5c 00 65 00 66 00 74 00 65 00 72 00 73 00 6c 00 74 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00  Rowe\Wilbert\efterslts.ini
		$a_01_3 = {54 00 61 00 76 00 73 00 68 00 65 00 64 00 73 00 70 00 6c 00 69 00 67 00 74 00 73 00 5c 00 55 00 72 00 6d 00 65 00 6e 00 6e 00 65 00 73 00 6b 00 65 00 72 00 73 00 2e 00 6c 00 6e 00 6b 00 } //01 00  Tavshedspligts\Urmenneskers.lnk
		$a_01_4 = {57 00 61 00 74 00 65 00 72 00 63 00 6f 00 6c 00 6f 00 72 00 65 00 64 00 2e 00 69 00 6e 00 69 00 } //00 00  Watercolored.ini
	condition:
		any of ($a_*)
 
}