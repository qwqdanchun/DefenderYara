
rule Trojan_O97M_BlueSky_A{
	meta:
		description = "Trojan:O97M/BlueSky.A,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {63 6f 70 79 20 2f 59 20 [0-30] 63 65 72 74 75 74 69 6c 2e 65 78 65 20 25 54 45 4d 50 25 5c 63 74 2e 65 78 65 20 26 26 20 63 64 20 2f 64 20 25 54 45 4d 50 25 20 26 26 20 63 74 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 [0-30] 20 31 2e 62 61 74 20 26 26 20 64 65 6c 20 2f 66 20 2f 71 } //1
		$a_02_1 = {3d 20 43 68 72 28 26 ?? ?? ?? 29 20 26 20 43 68 72 28 26 ?? ?? ?? 29 20 26 20 43 68 72 28 26 ?? ?? ?? 29 20 26 20 43 68 72 28 26 ?? ?? ?? 29 20 26 20 43 68 72 28 26 ?? ?? ?? 29 20 26 20 43 68 72 28 26 ?? ?? ?? 29 20 26 20 43 68 72 28 26 ?? ?? ?? 29 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}