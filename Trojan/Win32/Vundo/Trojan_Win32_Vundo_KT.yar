
rule Trojan_Win32_Vundo_KT{
	meta:
		description = "Trojan:Win32/Vundo.KT,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 10 27 00 00 8d 45 e8 50 56 89 75 f4 c7 45 e8 00 1f 0a fa ff d3 } //02 00 
		$a_01_1 = {68 c0 d4 01 00 8d 45 e8 50 56 c7 45 e8 80 69 67 ff ff d3 } //02 00 
		$a_01_2 = {c7 45 e8 00 98 3b 9e c7 45 ec f7 ff ff ff ff d3 } //01 00 
		$a_01_3 = {73 00 6f 00 66 00 74 00 6e 00 6f 00 74 00 69 00 66 00 79 00 2e 00 70 00 68 00 70 00 3f 00 } //01 00  softnotify.php?
		$a_01_4 = {5a 00 4f 00 52 00 4b 00 41 00 53 00 49 00 54 00 45 00 00 00 5a 00 4f 00 52 00 4b 00 41 00 46 00 45 00 45 00 44 00 00 00 } //01 00 
		$a_01_5 = {46 00 48 00 44 00 54 00 69 00 6d 00 65 00 72 00 } //00 00  FHDTimer
	condition:
		any of ($a_*)
 
}