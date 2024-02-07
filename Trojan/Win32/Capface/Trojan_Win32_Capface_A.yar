
rule Trojan_Win32_Capface_A{
	meta:
		description = "Trojan:Win32/Capface.A,SIGNATURE_TYPE_PEHSTR,29 00 29 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {64 65 64 6c 66 2e 62 61 74 } //0a 00  dedlf.bat
		$a_01_1 = {69 6d 67 25 64 5f 25 64 2e 6a 70 67 } //0a 00  img%d_%d.jpg
		$a_01_2 = {61 6e 74 69 2d 63 61 70 74 63 68 61 2e 63 6f 6d } //0a 00  anti-captcha.com
		$a_01_3 = {3c 00 73 00 63 00 72 00 69 00 70 00 74 00 20 00 6c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 3d 00 22 00 6a 00 61 00 76 00 61 00 73 00 63 00 72 00 69 00 70 00 74 00 22 00 3e 00 74 00 6f 00 70 00 2e 00 6c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 3d 00 27 00 68 00 74 00 } //01 00  <script language="javascript">top.location='ht
		$a_01_4 = {57 69 6e 50 6f 73 74 4d 58 } //01 00  WinPostMX
		$a_01_5 = {32 31 32 2e 39 35 2e 35 31 2e 33 35 } //01 00  212.95.51.35
		$a_01_6 = {6e 65 77 61 63 63 6f 75 6e 74 63 61 70 74 63 68 61 } //01 00  newaccountcaptcha
		$a_01_7 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 2f 61 63 63 6f 75 6e 74 73 2f 43 61 70 74 63 68 61 3f } //01 00  https://www.google.com/accounts/Captcha?
		$a_01_8 = {2f 72 64 2f 6d 79 64 64 2e 70 68 70 3f 68 75 69 3d 25 73 26 68 75 69 32 3d 25 73 26 68 75 69 33 3d 25 73 26 66 69 6c 65 3d 65 6c 69 74 65 30 33 } //01 00  /rd/mydd.php?hui=%s&hui2=%s&hui3=%s&file=elite03
		$a_01_9 = {2f 72 65 73 2e 70 68 70 3f 6b 65 79 3d 25 73 26 61 63 74 69 6f 6e 3d 67 65 74 26 69 64 3d 25 73 } //00 00  /res.php?key=%s&action=get&id=%s
	condition:
		any of ($a_*)
 
}