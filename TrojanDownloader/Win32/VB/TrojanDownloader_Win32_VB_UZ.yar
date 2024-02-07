
rule TrojanDownloader_Win32_VB_UZ{
	meta:
		description = "TrojanDownloader:Win32/VB.UZ,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2e 00 73 00 61 00 76 00 65 00 32 00 31 00 2e 00 70 00 65 00 2e 00 6b 00 72 00 } //01 00  .save21.pe.kr
		$a_01_1 = {2f 00 61 00 63 00 74 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 69 00 73 00 74 00 2e 00 61 00 73 00 70 00 3f 00 75 00 6e 00 63 00 6f 00 64 00 65 00 3d 00 } //01 00  /act/downlist.asp?uncode=
		$a_01_2 = {2f 00 61 00 63 00 74 00 2f 00 65 00 78 00 65 00 6c 00 69 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 61 00 73 00 70 00 3f 00 75 00 6e 00 63 00 6f 00 64 00 65 00 3d 00 } //01 00  /act/exelistall.asp?uncode=
		$a_01_3 = {2f 00 42 00 75 00 6e 00 64 00 6c 00 65 00 2f 00 43 00 6c 00 69 00 65 00 6e 00 74 00 2f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 5f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 5f 00 76 00 65 00 72 00 6c 00 69 00 73 00 74 00 2e 00 61 00 73 00 70 00 3f 00 76 00 65 00 72 00 63 00 6f 00 64 00 65 00 3d 00 } //01 00  /Bundle/Client/client_download_verlist.asp?vercode=
		$a_01_4 = {2f 00 42 00 75 00 6e 00 64 00 6c 00 65 00 2f 00 43 00 6c 00 69 00 65 00 6e 00 74 00 2f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 5f 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 5f 00 69 00 70 00 2e 00 61 00 73 00 70 00 } //00 00  /Bundle/Client/client_connect_ip.asp
	condition:
		any of ($a_*)
 
}