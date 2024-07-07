
rule TrojanDownloader_Win32_Jiwerks_B{
	meta:
		description = "TrojanDownloader:Win32/Jiwerks.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {3a 2f 2f 61 64 90 02 01 2e 37 65 72 39 77 33 6b 69 6a 73 34 2e 69 6e 66 6f 3a 38 30 38 30 2f 00 90 02 03 31 32 33 34 35 36 00 00 ff ff ff ff 90 01 01 00 00 00 90 05 06 0a 30 31 32 33 34 35 36 37 38 39 2e 65 78 65 00 90 00 } //1
		$a_03_1 = {3a 2f 2f 61 30 31 2e 6a 61 63 6b 70 6f 73 65 67 6f 6f 64 2e 69 6e 66 6f 3a 38 30 38 30 2f 00 90 02 03 31 32 33 34 35 36 00 00 ff ff ff ff 90 01 01 00 00 00 90 05 06 0a 30 31 32 33 34 35 36 37 38 39 2e 65 78 65 00 90 00 } //1
		$a_03_2 = {3a 2f 2f 36 34 2e 31 32 30 2e 31 38 39 2e 37 30 3a 38 30 38 30 2f 00 00 31 32 33 34 35 36 00 00 ff ff ff ff 90 01 01 00 00 00 90 05 06 0a 30 31 32 33 34 35 36 37 38 39 2e 65 78 65 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=1
 
}