
rule Trojan_BAT_Poullight_PA_MTB{
	meta:
		description = "Trojan:BAT/Poullight.PA!MTB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 54 00 43 00 2d 00 45 00 74 00 68 00 65 00 72 00 65 00 75 00 6d 00 } //01 00  BTC-Ethereum
		$a_01_1 = {42 00 54 00 43 00 2d 00 4d 00 6f 00 6e 00 65 00 72 00 6f 00 } //01 00  BTC-Monero
		$a_01_2 = {42 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 5c 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  Browsers\Passwords.txt
		$a_01_3 = {43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 2e 00 74 00 78 00 74 00 } //01 00  Clipboard.txt
		$a_01_4 = {53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 46 00 69 00 6c 00 65 00 73 00 } //01 00  Stealer Files
		$a_01_5 = {53 00 63 00 72 00 65 00 65 00 6e 00 53 00 68 00 6f 00 74 00 2e 00 70 00 6e 00 67 00 } //01 00  ScreenShot.png
		$a_01_6 = {57 00 65 00 62 00 43 00 61 00 6d 00 2e 00 6a 00 70 00 67 00 } //01 00  WebCam.jpg
		$a_01_7 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //01 00  Google\Chrome\User Data
		$a_01_8 = {59 00 61 00 6e 00 64 00 65 00 78 00 5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //00 00  Yandex\YandexBrowser\User Data
	condition:
		any of ($a_*)
 
}