
rule TrojanSpy_BAT_Ambsteal_A{
	meta:
		description = "TrojanSpy:BAT/Ambsteal.A,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0b 00 00 "
		
	strings :
		$a_03_0 = {2d 00 4c 00 6f 00 67 00 73 00 2d 00 ?? ?? 2d 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 2d 00 } //10
		$a_00_1 = {49 4c 41 64 64 54 6f 53 74 61 72 74 55 70 } //10 ILAddToStartUp
		$a_01_2 = {5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //1 \Google\Chrome\User Data\Default\Login Data
		$a_01_3 = {5c 00 41 00 70 00 70 00 6c 00 65 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 5c 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 5c 00 6b 00 65 00 79 00 63 00 68 00 61 00 69 00 6e 00 2e 00 70 00 6c 00 69 00 73 00 74 00 } //1 \Apple Computer\Preferences\keychain.plist
		$a_01_4 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 2e 00 4e 00 45 00 54 00 20 00 4d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 Password.NET Messenger Service
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5c 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //1 Software\DownloadManager\Passwords
		$a_01_6 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 6d 00 6f 00 7a 00 5f 00 6c 00 6f 00 67 00 69 00 6e 00 73 00 } //1 SELECT * FROM moz_logins
		$a_01_7 = {5c 00 4f 00 70 00 65 00 72 00 61 00 5c 00 4f 00 70 00 65 00 72 00 61 00 5c 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 77 00 61 00 6e 00 64 00 2e 00 64 00 61 00 74 00 } //1 \Opera\Opera\profile\wand.dat
		$a_01_8 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 49 00 6e 00 63 00 72 00 65 00 64 00 69 00 4d 00 61 00 69 00 6c 00 5c 00 49 00 64 00 65 00 6e 00 74 00 69 00 74 00 69 00 65 00 73 00 5c 00 } //1 Software\IncrediMail\Identities\
		$a_01_9 = {5c 00 46 00 54 00 50 00 20 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 65 00 72 00 20 00 44 00 65 00 6c 00 75 00 78 00 65 00 5c 00 46 00 54 00 50 00 4c 00 49 00 53 00 54 00 2e 00 54 00 58 00 54 00 } //1 \FTP Commander Deluxe\FTPLIST.TXT
		$a_01_10 = {5c 00 46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 5c 00 73 00 69 00 74 00 65 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 78 00 6d 00 6c 00 } //1 \FileZilla\sitemanager.xml
	condition:
		((#a_03_0  & 1)*10+(#a_00_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=25
 
}