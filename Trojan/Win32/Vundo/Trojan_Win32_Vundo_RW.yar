
rule Trojan_Win32_Vundo_RW{
	meta:
		description = "Trojan:Win32/Vundo.RW,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 73 63 72 69 70 74 20 73 72 63 3d 22 68 74 74 70 3a 2f 2f 67 6f 6f 67 6c 65 2e 72 75 2f 6a 73 } //01 00  <script src="http://google.ru/js
		$a_01_1 = {45 78 70 69 72 65 73 3a 20 25 73 2c 20 25 30 32 64 20 25 73 20 25 30 34 64 20 32 33 3a 35 39 3a 35 39 20 47 4d 54 } //01 00  Expires: %s, %02d %s %04d 23:59:59 GMT
		$a_01_2 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 54 65 73 74 20 41 67 65 6e 74 } //01 00  User-Agent: Test Agent
		$a_01_3 = {2f 66 69 6c 65 2f 75 70 6c 6f 61 64 2e 70 68 70 } //01 00  /file/upload.php
		$a_01_4 = {64 65 66 61 75 6c 74 2e 63 66 67 } //02 00  default.cfg
		$a_01_5 = {6d 65 74 72 69 6b 61 2e 79 61 6e 64 65 78 2e 72 75 } //03 00  metrika.yandex.ru
		$a_01_6 = {81 e1 00 f0 00 00 bb 00 30 00 00 66 3b cb 75 1f } //03 00 
		$a_01_7 = {57 8b 7d 10 83 c7 07 c1 ef 03 4f } //01 00 
		$a_01_8 = {5b 43 4f 4f 4b 5d 00 00 5b 52 45 4e 54 5d 00 00 5b 52 50 4c 5d 00 00 00 3c 2f 73 63 72 69 70 74 3e } //01 00 
		$a_01_9 = {5b 52 52 5d 00 00 00 00 5b 55 42 4d 50 5d 00 00 5b 55 44 4c 4c 5d 00 00 5b 44 4c 4c 5d 00 00 00 5b 44 41 53 5d } //00 00 
		$a_00_10 = {80 10 00 00 } //44 3a 
	condition:
		any of ($a_*)
 
}