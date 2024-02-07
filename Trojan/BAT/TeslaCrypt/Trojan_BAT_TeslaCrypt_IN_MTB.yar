
rule Trojan_BAT_TeslaCrypt_IN_MTB{
	meta:
		description = "Trojan:BAT/TeslaCrypt.IN!MTB,SIGNATURE_TYPE_PEHSTR,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00  CompressionMode
		$a_01_1 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_01_2 = {54 6f 49 6e 74 33 32 } //01 00  ToInt32
		$a_01_3 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_4 = {67 65 74 5f 52 } //01 00  get_R
		$a_01_5 = {67 65 74 5f 47 } //01 00  get_G
		$a_01_6 = {67 65 74 5f 42 } //01 00  get_B
		$a_01_7 = {52 65 73 6f 75 72 63 65 4d 61 6e 61 67 65 72 } //01 00  ResourceManager
		$a_01_8 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_9 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_10 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00  System.Threading
		$a_01_11 = {4d 65 74 68 6f 64 42 61 73 65 } //01 00  MethodBase
		$a_01_12 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_13 = {6e 00 65 00 76 00 65 00 72 00 20 00 6c 00 65 00 74 00 20 00 79 00 6f 00 75 00 72 00 73 00 65 00 6c 00 66 00 20 00 62 00 65 00 20 00 64 00 65 00 66 00 65 00 61 00 74 00 65 00 64 00 } //00 00  never let yourself be defeated
		$a_01_14 = {00 5d 04 00 00 66 3b 04 80 5c 29 00 00 } //67 3b 
	condition:
		any of ($a_*)
 
}