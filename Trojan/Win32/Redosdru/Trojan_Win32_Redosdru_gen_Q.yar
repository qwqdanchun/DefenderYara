
rule Trojan_Win32_Redosdru_gen_Q{
	meta:
		description = "Trojan:Win32/Redosdru.gen!Q,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 0c 00 00 03 00 "
		
	strings :
		$a_03_0 = {49 8b 4d fc 8a 1c 0a 80 f3 90 01 01 88 1c 0a 42 3b d0 7c d8 90 00 } //03 00 
		$a_01_1 = {8b 4d fc 0f be 11 85 d2 74 21 8b 45 fc 8a 08 32 4d f8 8b 55 fc 88 0a 8b 45 f8 83 c0 01 89 45 f8 } //02 00 
		$a_01_2 = {6a 02 6a 00 68 00 fc ff ff 56 ff 15 } //02 00 
		$a_01_3 = {8a 47 01 c1 e6 06 3c 3d 8b de 75 1c 8b 75 fc } //02 00 
		$a_01_4 = {8a 11 80 ea 86 8b 45 fc 03 45 f8 88 10 8b 4d fc 03 4d f8 8a 11 80 f2 87 8b 45 fc } //02 00 
		$a_01_5 = {46 75 63 6b 59 6f 75 2e 74 78 74 00 } //02 00 
		$a_01_6 = {4e 6f 68 61 63 6b 65 72 2d 76 69 63 20 55 70 64 61 74 65 00 } //02 00  潎慨正牥瘭捩唠摰瑡e
		$a_01_7 = {67 65 72 2e 75 6f 79 6b 63 75 46 } //01 00  ger.uoykcuF
		$a_01_8 = {4d 79 49 6e 66 6f 72 6d 61 74 69 6f 6e 73 2e 69 6e 69 00 } //01 00 
		$a_01_9 = {67 68 6f 73 74 20 55 70 64 61 74 65 00 } //01 00 
		$a_01_10 = {46 75 63 6b 5f 61 76 70 00 } //01 00 
		$a_01_11 = {25 73 5c 77 69 25 64 6e 64 2e 74 65 6d 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}