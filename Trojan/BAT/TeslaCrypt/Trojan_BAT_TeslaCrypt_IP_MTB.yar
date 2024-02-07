
rule Trojan_BAT_TeslaCrypt_IP_MTB{
	meta:
		description = "Trojan:BAT/TeslaCrypt.IP!MTB,SIGNATURE_TYPE_PEHSTR,0e 00 0e 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_1 = {46 72 6f 6d 41 72 67 62 } //01 00  FromArgb
		$a_01_2 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_3 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_4 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //01 00  System.IO.Compression
		$a_01_5 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_01_6 = {47 65 74 45 6e 74 72 79 41 73 73 65 6d 62 6c 79 } //07 00  GetEntryAssembly
		$a_01_7 = {59 00 6f 00 75 00 20 00 77 00 69 00 6c 00 6c 00 20 00 66 00 61 00 63 00 65 00 20 00 6d 00 61 00 6e 00 79 00 20 00 64 00 65 00 66 00 65 00 61 00 74 00 73 00 20 00 69 00 6e 00 20 00 6c 00 69 00 66 00 65 00 2c 00 20 00 62 00 75 00 74 00 20 00 6e 00 65 00 76 00 65 00 72 00 20 00 6c 00 65 00 74 00 20 00 79 00 6f 00 75 00 72 00 73 00 65 00 6c 00 66 00 20 00 62 00 65 00 20 00 64 00 65 00 66 00 65 00 61 00 74 00 65 00 64 00 2e 00 } //07 00  You will face many defeats in life, but never let yourself be defeated.
		$a_01_8 = {53 00 70 00 61 00 72 00 74 00 61 00 2e 00 64 00 6c 00 6c 00 } //00 00  Sparta.dll
	condition:
		any of ($a_*)
 
}