
rule Backdoor_Win32_Toksor_A{
	meta:
		description = "Backdoor:Win32/Toksor.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 6f 78 63 6f 72 65 } //01 00  toxcore
		$a_01_1 = {74 6f 78 45 73 61 76 65 } //01 00  toxEsave
		$a_01_2 = {6e 6f 64 65 2e 74 6f 78 2e 62 69 72 69 62 69 72 69 2e 6f 72 67 } //01 00  node.tox.biribiri.org
		$a_01_3 = {74 6f 78 2e 69 6e 69 74 72 61 6d 66 73 2e 69 6f } //01 00  tox.initramfs.io
		$a_01_4 = {74 6f 78 2e 61 62 69 6c 69 6e 73 6b 69 2e 63 6f 6d } //01 00  tox.abilinski.com
		$a_01_5 = {21 73 79 73 69 6e 66 6f 00 } //01 00 
		$a_01_6 = {21 65 78 65 63 00 } //01 00  攡數c
		$a_01_7 = {21 77 67 65 74 00 } //01 00  眡敧t
		$a_01_8 = {21 75 70 64 61 74 65 00 } //01 00  甡摰瑡e
		$a_01_9 = {21 73 68 65 6c 6c 00 } //01 00 
		$a_01_10 = {21 6c 6f 61 64 6c 69 62 72 61 72 79 00 } //01 00 
		$a_01_11 = {21 73 74 61 72 74 70 72 6f 78 79 00 } //00 00  猡慴瑲牰硯y
	condition:
		any of ($a_*)
 
}