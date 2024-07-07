
rule TrojanSpy_BAT_Quasar_RB_MTB{
	meta:
		description = "TrojanSpy:BAT/Quasar.RB!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //1 SELECT * FROM FirewallProduct
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 50 00 72 00 69 00 6d 00 61 00 72 00 79 00 3d 00 27 00 74 00 72 00 75 00 65 00 27 00 } //1 SELECT * FROM Win32_OperatingSystem WHERE Primary='true'
		$a_01_2 = {64 00 65 00 6c 00 20 00 2f 00 61 00 20 00 2f 00 71 00 20 00 2f 00 66 00 } //1 del /a /q /f
		$a_01_3 = {59 00 61 00 6e 00 64 00 65 00 78 00 5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //1 Yandex\YandexBrowser\User Data\Default\Login Data
		$a_01_4 = {5c 00 46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 5c 00 73 00 69 00 74 00 65 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 78 00 6d 00 6c 00 } //1 \FileZilla\sitemanager.xml
		$a_01_5 = {6c 00 6f 00 67 00 69 00 6e 00 73 00 2e 00 6a 00 73 00 6f 00 6e 00 } //1 logins.json
		$a_01_6 = {48 61 6e 64 6c 65 44 6f 50 72 6f 63 65 73 73 4b 69 6c 6c } //1 HandleDoProcessKill
		$a_01_7 = {48 61 6e 64 6c 65 47 65 74 4b 65 79 6c 6f 67 67 65 72 4c 6f 67 73 } //1 HandleGetKeyloggerLogs
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}