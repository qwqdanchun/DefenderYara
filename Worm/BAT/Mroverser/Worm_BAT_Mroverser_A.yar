
rule Worm_BAT_Mroverser_A{
	meta:
		description = "Worm:BAT/Mroverser.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 04 00 "
		
	strings :
		$a_01_0 = {2e 65 78 65 00 4d 6f 2d 53 65 72 76 65 72 00 3c 4d 6f 64 75 6c 65 3e } //01 00 
		$a_01_1 = {73 65 72 76 65 72 55 72 6c 00 55 70 6c 6f 61 64 52 65 70 6f 72 74 } //01 00  敳癲牥牕l灕潬摡敒潰瑲
		$a_01_2 = {34 00 72 00 63 00 2b 00 52 00 55 00 42 00 69 00 42 00 36 00 63 00 2f 00 5a 00 4d 00 58 00 54 00 71 00 73 00 61 00 41 00 49 00 78 00 4c 00 42 00 6d 00 } //01 00  4rc+RUBiB6c/ZMXTqsaAIxLBm
		$a_01_3 = {52 00 37 00 54 00 59 00 6a 00 39 00 57 00 58 00 4d 00 47 00 4b 00 36 00 51 00 57 00 50 00 36 00 2b 00 41 00 4b 00 64 00 79 00 6d 00 41 00 7a 00 6e 00 6b 00 } //00 00  R7TYj9WXMGK6QWP6+AKdymAznk
		$a_00_4 = {87 10 00 } //00 aa 
	condition:
		any of ($a_*)
 
}