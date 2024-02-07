
rule TrojanDownloader_O97M_Bartallex_AC{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.AC,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 66 20 67 65 74 53 74 72 69 6e 67 28 22 76 25 62 25 6f 25 78 25 73 25 65 25 72 25 76 25 69 25 63 25 65 25 2e 25 65 25 78 25 65 25 7c 25 76 25 62 25 6f 25 78 25 74 25 72 25 61 25 79 25 2e 25 65 25 78 25 65 25 7c 25 76 25 6d 25 74 25 6f 25 6f 25 6c 25 73 25 64 25 2e 25 65 25 78 25 65 25 7c 25 76 25 6d 25 77 25 61 25 72 25 65 25 74 25 72 25 61 25 79 25 2e 25 65 25 78 25 65 25 7c } //01 00  If getString("v%b%o%x%s%e%r%v%i%c%e%.%e%x%e%|%v%b%o%x%t%r%a%y%.%e%x%e%|%v%m%t%o%o%l%s%d%.%e%x%e%|%v%m%w%a%r%e%t%r%a%y%.%e%x%e%|
		$a_01_1 = {67 65 74 53 74 72 69 6e 67 28 22 70 25 6f 25 77 25 65 25 72 25 73 25 68 25 65 25 6c 25 6c 25 2e 25 65 25 78 25 65 25 20 25 28 25 4e 25 65 25 77 25 2d 25 4f 25 62 25 6a 25 65 25 63 25 74 25 20 25 53 25 79 25 73 25 74 25 65 25 6d 25 2e 25 4e 25 65 25 74 25 2e 25 57 25 65 25 62 25 43 25 6c 25 69 25 65 25 6e 25 74 25 29 25 2e 25 44 25 6f 25 77 25 6e 25 6c 25 6f 25 61 25 64 25 46 25 69 25 6c 25 65 25 22 29 } //01 00  getString("p%o%w%e%r%s%h%e%l%l%.%e%x%e% %(%N%e%w%-%O%b%j%e%c%t% %S%y%s%t%e%m%.%N%e%t%.%W%e%b%C%l%i%e%n%t%)%.%D%o%w%n%l%o%a%d%F%i%l%e%")
		$a_03_2 = {67 65 74 53 74 72 69 6e 67 28 22 27 25 2c 25 27 25 22 29 20 26 20 90 02 10 20 26 20 22 90 02 0a 2e 65 78 65 27 29 3b 53 74 61 72 74 2d 50 72 6f 63 65 73 73 20 27 22 20 26 20 90 02 10 20 26 20 22 90 02 0a 2e 65 78 65 27 22 90 00 } //01 00 
		$a_03_3 = {68 74 74 70 3a 2f 2f 90 02 20 2f 66 69 6c 65 2e 6a 70 67 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}