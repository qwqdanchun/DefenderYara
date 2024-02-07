
rule Trojan_Win32_Qhost_FZ{
	meta:
		description = "Trojan:Win32/Qhost.FZ,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //01 00  etc\hosts
		$a_01_1 = {79 00 61 00 6e 00 64 00 65 00 78 00 2e 00 72 00 75 00 } //01 00  yandex.ru
		$a_01_2 = {67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00  google.com
		$a_01_3 = {76 00 6b 00 6f 00 6e 00 74 00 61 00 6b 00 74 00 65 00 2e 00 72 00 75 00 } //01 00  vkontakte.ru
		$a_01_4 = {39 31 2e 32 31 37 2e 31 35 33 2e 37 } //00 00  91.217.153.7
	condition:
		any of ($a_*)
 
}