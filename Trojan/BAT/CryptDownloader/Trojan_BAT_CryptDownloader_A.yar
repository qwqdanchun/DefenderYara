
rule Trojan_BAT_CryptDownloader_A{
	meta:
		description = "Trojan:BAT/CryptDownloader.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {67 65 74 5f 50 72 6f 63 65 73 73 4e 61 6d 65 00 6f 70 5f 49 6e 65 71 75 61 6c 69 74 79 90 01 01 45 78 69 74 00 47 65 74 50 72 6f 63 65 73 73 65 73 42 79 4e 61 6d 65 00 90 00 } //1
		$a_03_1 = {41 6d 73 74 65 72 46 75 6e 63 00 64 61 74 61 74 68 72 65 61 64 90 01 01 64 65 63 52 00 62 79 74 65 73 54 6f 42 65 44 65 63 72 79 70 74 65 64 00 70 61 73 73 77 6f 72 64 42 79 74 65 73 00 52 75 6e 6e 65 72 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}