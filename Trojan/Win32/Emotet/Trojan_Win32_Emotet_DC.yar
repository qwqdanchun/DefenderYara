
rule Trojan_Win32_Emotet_DC{
	meta:
		description = "Trojan:Win32/Emotet.DC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 00 6d 00 61 00 79 00 31 00 32 00 68 00 66 00 58 00 } //01 00  9may12hfX
		$a_01_1 = {70 00 65 00 70 00 70 00 65 00 72 00 70 00 74 00 6f 00 66 00 61 00 73 00 74 00 65 00 72 00 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 64 00 6f 00 77 00 6e 00 4c 00 } //01 00  pepperptofasterExtensionsdownL
		$a_01_2 = {64 00 4f 00 53 00 6e 00 6b 00 6f 00 66 00 73 00 61 00 76 00 69 00 6e 00 67 00 64 00 72 00 65 00 77 00 55 00 } //01 00  dOSnkofsavingdrewU
		$a_01_3 = {61 00 6e 00 64 00 4a 00 30 00 70 00 6f 00 74 00 65 00 6e 00 74 00 69 00 61 00 6c 00 6c 00 79 00 74 00 68 00 69 00 73 00 74 00 6f 00 72 00 79 00 69 00 6e 00 79 00 63 00 6c 00 61 00 69 00 6d 00 65 00 64 00 } //04 00  andJ0potentiallythistoryinyclaimed
		$a_01_4 = {46 67 38 2f 37 7c 35 50 23 52 6c 64 2f 32 66 43 46 50 30 5a 39 6e 74 2e 70 64 62 } //04 00  Fg8/7|5P#Rld/2fCFP0Z9nt.pdb
		$a_01_5 = {4b 63 65 72 71 70 68 6c 77 62 68 71 32 33 76 32 52 43 6c 6b 2f 3d 49 39 2f 59 2e 70 64 62 } //00 00  Kcerqphlwbhq23v2RClk/=I9/Y.pdb
	condition:
		any of ($a_*)
 
}