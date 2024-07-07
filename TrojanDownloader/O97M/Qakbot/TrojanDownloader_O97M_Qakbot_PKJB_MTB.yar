
rule TrojanDownloader_O97M_Qakbot_PKJB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.PKJB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {6d 22 26 22 65 22 26 22 73 74 65 22 26 22 72 6d 22 26 22 75 73 74 22 26 22 72 61 2e 72 22 26 22 6f 2f 4d 22 26 22 63 22 26 22 76 6d 47 22 26 22 54 57 22 26 22 42 34 22 26 22 38 2f 4e 63 22 26 22 68 6f 22 26 22 6e 68 22 26 22 4e 68 2e 70 22 26 22 6e 22 26 22 67 22 2c 22 } //1 m"&"e"&"ste"&"rm"&"ust"&"ra.r"&"o/M"&"c"&"vmG"&"TW"&"B4"&"8/Nc"&"ho"&"nh"&"Nh.p"&"n"&"g","
		$a_01_1 = {65 6d 22 26 22 62 72 61 74 22 26 22 65 67 2e 63 22 26 22 6f 22 26 22 6d 2f 38 56 22 26 22 55 72 4a 22 26 22 6b 30 61 2f 4e 22 26 22 63 22 26 22 68 22 26 22 6f 6e 22 26 22 68 22 26 22 4e 22 26 22 68 2e 70 22 26 22 6e 22 26 22 67 22 2c 22 } //1 em"&"brat"&"eg.c"&"o"&"m/8V"&"UrJ"&"k0a/N"&"c"&"h"&"on"&"h"&"N"&"h.p"&"n"&"g","
		$a_01_2 = {65 32 22 26 22 65 6b 22 26 22 69 6a 75 22 26 22 74 6f 22 26 22 6c 2e 74 22 26 22 6b 2f 74 62 22 26 22 54 63 22 26 22 43 31 22 26 22 44 22 26 22 52 57 22 26 22 54 6d 22 26 22 43 2f 4e 22 26 22 63 68 22 26 22 6f 6e 22 26 22 68 4e 22 26 22 68 2e 70 22 26 22 6e 22 26 22 67 22 2c } //1 e2"&"ek"&"iju"&"to"&"l.t"&"k/tb"&"Tc"&"C1"&"D"&"RW"&"Tm"&"C/N"&"ch"&"on"&"hN"&"h.p"&"n"&"g",
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}