
rule Trojan_Win32_Zlob_F{
	meta:
		description = "Trojan:Win32/Zlob.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {59 6f 75 20 73 68 6f 75 6c 64 20 72 65 62 6f 6f 74 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 70 72 69 6f 72 20 74 6f 20 75 6e 69 6e 73 74 61 6c 6c 69 6e 67 20 74 68 69 73 20 73 6f 66 74 77 61 72 65 2e 20 52 65 62 6f 6f 74 20 6e 6f 77 3f } //01 00  You should reboot your computer prior to uninstalling this software. Reboot now?
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 5c 49 6e 74 65 72 6e 65 74 20 53 65 63 75 72 69 74 79 00 } //01 00  潓瑦慷敲屜湉整湲瑥匠捥牵瑩y
		$a_00_2 = {43 6f 64 65 63 73 53 6f 66 74 77 61 72 65 50 61 63 6b 61 67 65 2e 63 68 6c 00 } //01 00 
		$a_02_3 = {55 6e 69 6e 73 74 61 6c 6c 5c 90 02 08 20 43 6f 64 65 63 90 00 } //01 00 
		$a_00_4 = {41 56 5a 69 70 45 6e 63 68 61 6e 63 65 72 2e 43 68 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}