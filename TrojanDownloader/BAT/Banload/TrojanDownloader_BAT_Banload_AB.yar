
rule TrojanDownloader_BAT_Banload_AB{
	meta:
		description = "TrojanDownloader:BAT/Banload.AB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {6c 00 75 00 6d 00 61 00 2e 00 7a 00 69 00 70 00 90 02 04 72 00 75 00 6e 00 61 00 73 00 90 02 10 5c 00 00 90 02 04 2e 00 65 00 78 00 65 00 00 90 02 10 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 00 90 02 ff 6d 00 6f 00 78 00 2e 00 65 00 78 00 65 00 90 02 ff 57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 52 00 65 00 63 00 75 00 72 00 73 00 69 00 76 00 65 00 46 00 6f 00 72 00 6d 00 43 00 72 00 65 00 61 00 74 00 65 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule TrojanDownloader_BAT_Banload_AB_2{
	meta:
		description = "TrojanDownloader:BAT/Banload.AB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {4c 00 61 00 62 00 65 00 6c 00 32 00 90 01 02 68 00 74 00 74 00 70 00 90 02 80 73 00 69 00 6e 00 63 00 72 00 6f 00 6e 00 69 00 73 00 6d 00 6f 00 90 01 02 46 00 6f 00 72 00 6d 00 31 00 90 01 02 72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 90 01 02 2e 00 65 00 78 00 65 00 90 00 } //2
		$a_01_1 = {5c 41 64 6d 69 6e 5c 44 65 73 6b 74 6f 70 5c 53 61 78 6f 5c 53 61 78 6f 5c } //1 \Admin\Desktop\Saxo\Saxo\
		$a_01_2 = {49 73 55 73 65 72 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 00 } //1 獉獕牥摁業楮瑳慲潴r
		$a_01_3 = {2f 00 55 00 6e 00 5a 00 69 00 70 00 2e 00 68 00 74 00 6d 00 6c 00 } //1 /UnZip.html
		$a_03_4 = {43 00 68 00 65 00 63 00 6b 00 42 00 6f 00 78 00 34 00 90 01 02 68 00 74 00 74 00 70 00 90 02 80 4c 00 65 00 73 00 73 00 61 00 90 01 02 74 00 75 00 70 00 69 00 73 00 2e 00 7a 00 69 00 70 00 90 01 02 72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 90 01 02 2e 00 65 00 78 00 65 00 90 00 } //2
		$a_01_5 = {5c 41 64 6d 69 6e 5c 44 65 73 6b 74 6f 70 5c 50 72 6f 64 75 63 74 5c 50 72 6f 64 75 63 74 5c } //1 \Admin\Desktop\Product\Product\
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*2+(#a_01_5  & 1)*1) >=5
 
}
rule TrojanDownloader_BAT_Banload_AB_3{
	meta:
		description = "TrojanDownloader:BAT/Banload.AB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0a 00 00 "
		
	strings :
		$a_03_0 = {56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 7b 00 30 00 7d 00 90 02 03 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 00 } //1
		$a_03_1 = {4d 79 53 65 74 74 69 6e 67 73 50 72 6f 70 65 72 74 79 90 02 07 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 00 } //1
		$a_03_2 = {53 70 65 63 69 61 6c 44 69 72 65 63 74 6f 72 69 65 73 50 72 6f 78 79 90 02 06 68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 90 00 } //1
		$a_03_3 = {44 00 69 00 61 00 6c 00 6f 00 67 00 31 00 90 01 02 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 00 } //1
		$a_03_4 = {57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 53 00 65 00 65 00 49 00 6e 00 6e 00 65 00 72 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 90 01 02 68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 90 00 } //1
		$a_03_5 = {72 00 75 00 6e 00 61 00 73 00 90 01 06 2e 00 65 00 78 00 65 00 90 01 02 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 90 00 } //1
		$a_03_6 = {2e 00 65 00 78 00 65 00 90 01 02 25 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 25 00 90 01 02 5c 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_00_7 = {5c 75 73 65 72 73 5c 65 63 6f 6c 6f 67 79 5c 64 6f 63 75 6d 65 6e 74 73 5c 76 69 73 75 61 6c 20 73 74 75 64 69 6f 20 32 30 31 35 5c 50 72 6f 6a 65 63 74 73 5c 6e 6f 6d 61 72 } //1 \users\ecology\documents\visual studio 2015\Projects\nomar
		$a_03_8 = {46 00 6f 00 72 00 6d 00 31 00 90 01 06 2e 00 65 00 78 00 65 00 90 01 02 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 90 01 02 5c 00 90 00 } //1
		$a_03_9 = {2e 00 65 00 78 00 65 00 90 01 02 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 90 01 02 5c 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_00_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1) >=2
 
}