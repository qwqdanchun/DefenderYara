
rule TrojanDownloader_BAT_ZippyLoader_BB_MTB{
	meta:
		description = "TrojanDownloader:BAT/ZippyLoader.BB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0a 00 00 "
		
	strings :
		$a_01_0 = {67 00 61 00 6d 00 69 00 6e 00 67 00 66 00 69 00 6c 00 65 00 73 00 2e 00 73 00 33 00 2e 00 61 00 70 00 2d 00 73 00 6f 00 75 00 74 00 68 00 2d 00 31 00 2e 00 61 00 6d 00 61 00 7a 00 6f 00 6e 00 61 00 77 00 73 00 2e 00 63 00 6f 00 6d 00 } //2 gamingfiles.s3.ap-south-1.amazonaws.com
		$a_01_1 = {43 6f 6e 73 6f 6c 65 45 78 61 6d 70 6c 65 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 4c 6f 61 64 65 72 2e 70 64 62 } //2 ConsoleExample\obj\Release\Loader.pdb
		$a_01_2 = {33 00 32 00 62 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //2 32bit.exe
		$a_01_3 = {63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 62 00 69 00 6e 00 } //2 client.bin
		$a_01_4 = {69 00 6e 00 6a 00 65 00 63 00 74 00 65 00 64 00 20 00 73 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 } //1 injected successfully
		$a_01_5 = {64 65 63 72 79 70 74 5f 73 74 72 69 6e 67 } //1 decrypt_string
		$a_01_6 = {6c 6f 61 64 5f 75 73 65 72 5f 64 61 74 61 } //1 load_user_data
		$a_01_7 = {44 6f 77 6e 6c 6f 61 64 49 6e 6a 65 63 74 } //1 DownloadInject
		$a_01_8 = {4c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 20 00 69 00 6e 00 20 00 77 00 69 00 74 00 68 00 20 00 73 00 61 00 76 00 65 00 64 00 20 00 6b 00 65 00 79 00 } //1 Logging in with saved key
		$a_01_9 = {24 34 37 31 34 64 39 35 63 2d 31 34 30 38 2d 34 34 61 38 2d 61 35 30 33 2d 36 38 31 38 37 38 62 62 65 33 66 34 } //1 $4714d95c-1408-44a8-a503-681878bbe3f4
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=14
 
}