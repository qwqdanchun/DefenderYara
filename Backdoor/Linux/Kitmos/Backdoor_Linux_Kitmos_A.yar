
rule Backdoor_Linux_Kitmos_A{
	meta:
		description = "Backdoor:Linux/Kitmos.A,SIGNATURE_TYPE_MACHOHSTR_EXT,10 00 10 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 75 73 72 2f 73 62 69 6e 2f 73 63 72 65 65 6e 63 61 70 74 75 72 65 } //02 00  /usr/sbin/screencapture
		$a_01_1 = {2f 62 69 6e 2f 73 68 } //02 00  /bin/sh
		$a_01_2 = {2f 75 73 72 2f 62 69 6e 2f 63 75 72 6c } //02 00  /usr/bin/curl
		$a_01_3 = {58 2d 41 53 49 48 54 54 50 52 65 71 75 65 73 74 2d 45 78 70 69 72 65 73 } //02 00  X-ASIHTTPRequest-Expires
		$a_01_4 = {6d 5f 46 6f 6c 64 65 72 4c 69 73 74 } //02 00  m_FolderList
		$a_01_5 = {6d 5f 7a 69 70 55 70 6c 6f 61 64 } //02 00  m_zipUpload
		$a_01_6 = {6d 5f 43 6f 6d 70 75 74 65 72 4e 61 6d 65 5f 55 73 65 72 4e 61 6d 65 } //02 00  m_ComputerName_UserName
		$a_01_7 = {6d 5f 75 70 6c 6f 61 64 55 52 4c } //02 00  m_uploadURL
		$a_01_8 = {2f 6c 61 6e 67 2e 70 68 70 } //00 00  /lang.php
		$a_00_9 = {5d 04 00 00 5d 05 03 80 5c 28 } //00 00 
	condition:
		any of ($a_*)
 
}