
rule Trojan_BAT_Tnega_B_MTB{
	meta:
		description = "Trojan:BAT/Tnega.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 45 00 41 00 43 00 49 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //1 C:\Windows\EACInfo.txt
		$a_00_1 = {45 00 73 00 63 00 61 00 70 00 65 00 46 00 72 00 6f 00 6d 00 54 00 61 00 72 00 6b 00 6f 00 76 00 5f 00 44 00 61 00 74 00 61 00 5c 00 53 00 74 00 72 00 65 00 61 00 6d 00 69 00 6e 00 67 00 41 00 73 00 73 00 65 00 74 00 73 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 68 00 61 00 64 00 65 00 72 00 73 00 } //1 EscapeFromTarkov_Data\StreamingAssets\Windows\shaders
		$a_01_2 = {47 00 78 00 50 00 36 00 79 00 47 00 50 00 77 00 74 00 5a 00 4a 00 54 00 6a 00 4d 00 35 00 6e 00 4c 00 46 00 31 00 6b 00 71 00 75 00 61 00 74 00 63 00 63 00 62 00 6d 00 6f 00 6a 00 76 00 39 00 45 00 54 00 4b 00 2e 00 7a 00 69 00 70 00 } //1 GxP6yGPwtZJTjM5nLF1kquatccbmojv9ETK.zip
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}