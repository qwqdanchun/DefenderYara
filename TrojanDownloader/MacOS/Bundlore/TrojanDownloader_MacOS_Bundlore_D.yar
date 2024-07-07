
rule TrojanDownloader_MacOS_Bundlore_D{
	meta:
		description = "TrojanDownloader:MacOS/Bundlore.D,SIGNATURE_TYPE_CMDHSTR_EXT,09 00 09 00 06 00 00 "
		
	strings :
		$a_00_0 = {6e 00 6f 00 68 00 75 00 70 00 20 00 2f 00 62 00 69 00 6e 00 2f 00 62 00 61 00 73 00 68 00 20 00 2d 00 63 00 20 00 65 00 76 00 61 00 6c 00 } //1 nohup /bin/bash -c eval
		$a_00_1 = {6e 00 6f 00 68 00 75 00 70 00 20 00 2f 00 62 00 69 00 6e 00 2f 00 73 00 68 00 20 00 2d 00 63 00 20 00 65 00 76 00 61 00 6c 00 } //1 nohup /bin/sh -c eval
		$a_00_2 = {6f 00 70 00 65 00 6e 00 73 00 73 00 6c 00 20 00 65 00 6e 00 63 00 20 00 2d 00 61 00 65 00 73 00 2d 00 32 00 35 00 36 00 2d 00 63 00 62 00 63 00 20 00 2d 00 64 00 20 00 2d 00 61 00 20 00 2d 00 62 00 61 00 73 00 65 00 36 00 34 00 20 00 2d 00 6b 00 } //2 openssl enc -aes-256-cbc -d -a -base64 -k
		$a_00_3 = {78 00 61 00 74 00 74 00 72 00 20 00 2d 00 63 00 } //2 xattr -c
		$a_00_4 = {63 00 68 00 6d 00 6f 00 64 00 20 00 37 00 37 00 37 00 } //2 chmod 777
		$a_00_5 = {26 00 26 00 20 00 72 00 6d 00 20 00 2d 00 72 00 66 00 } //2 && rm -rf
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2) >=9
 
}