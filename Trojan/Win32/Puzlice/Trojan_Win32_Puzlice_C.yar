
rule Trojan_Win32_Puzlice_C{
	meta:
		description = "Trojan:Win32/Puzlice.C,SIGNATURE_TYPE_PEHSTR,23 00 1f 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {69 6e 64 65 78 2e 70 68 70 3f 75 73 65 72 49 44 3d 30 26 70 61 73 73 77 6f 72 64 3d 6e 75 6c 6c 26 75 73 65 72 63 75 72 3d 30 26 61 3d 72 65 67 69 73 74 72 61 74 69 6f 6e 5f 6d 61 69 6e 26 73 65 6e 64 3d 31 26 26 00 } //0a 00 
		$a_01_1 = {26 61 3d 70 61 79 5f 69 6e 70 6c 61 74 26 63 6f 6e 66 69 72 6d 3d 4f 4b 26 61 6d 6f 75 6e 74 3d 31 30 30 26 6e 65 77 5f 75 69 3d 26 26 00 } //0a 00  愦瀽祡楟灮慬♴潣普物㵭䭏愦潭湵㵴〱☰敮彷極☽&
		$a_01_2 = {54 41 53 4b 4b 49 4c 4c 20 2f 46 20 2f 49 4d 20 00 } //01 00 
		$a_01_3 = {41 6e 56 69 72 2e 65 78 65 00 } //01 00 
		$a_01_4 = {70 74 72 61 66 66 65 72 2e 65 78 65 00 } //01 00 
		$a_01_5 = {53 74 61 72 74 47 75 61 72 64 2e 65 78 65 00 } //01 00 
		$a_01_6 = {4e 65 74 4d 6f 6e 69 74 6f 72 2e 65 78 65 00 } //01 00 
		$a_01_7 = {55 53 42 47 75 61 72 64 2e 65 78 65 00 } //00 00 
		$a_01_8 = {00 5d 04 00 00 64 40 03 80 5c 24 00 00 65 40 03 80 00 00 01 00 } //27 00 
	condition:
		any of ($a_*)
 
}