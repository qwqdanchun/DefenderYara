
rule Worm_Win32_Korgo{
	meta:
		description = "Worm:Win32/Korgo,SIGNATURE_TYPE_PEHSTR,1e 00 14 00 1f 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 76 73 65 72 76 65 2e 65 78 65 } //01 00  avserve.exe
		$a_01_1 = {66 74 70 75 70 64 2e 65 78 65 } //01 00  ftpupd.exe
		$a_01_2 = {42 6f 74 20 4c 6f 61 64 65 72 } //02 00  Bot Loader
		$a_01_3 = {61 76 73 65 72 76 65 32 2e 65 78 65 55 70 64 61 74 65 20 53 65 72 76 69 63 65 } //01 00  avserve2.exeUpdate Service
		$a_01_4 = {68 74 74 70 3a 2f 2f 25 73 3a 25 64 2f 78 2e 65 78 65 } //02 00  http://%s:%d/x.exe
		$a_01_5 = {58 68 74 74 70 3a 2f 2f 31 32 37 2e 30 2e 30 2e 31 3a 38 30 30 2f 65 2e 65 78 65 } //03 00  Xhttp://127.0.0.1:800/e.exe
		$a_01_6 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 5c 6b 7a 61 6c 61 70 2e 65 78 65 } //02 00  C:\WINDOWS\SYSTEM\kzalap.exe
		$a_01_7 = {4d 53 20 43 6f 6e 66 69 67 20 76 31 33 } //01 00  MS Config v13
		$a_01_8 = {61 64 75 6c 74 2d 65 6d 70 69 72 65 2e 63 6f 6d } //01 00  adult-empire.com
		$a_01_9 = {63 69 74 69 2d 62 61 6e 6b 2e 72 75 } //01 00  citi-bank.ru
		$a_01_10 = {63 6f 6c 6f 72 2d 62 61 6e 6b 2e 72 75 } //01 00  color-bank.ru
		$a_01_11 = {63 72 75 74 6f 70 2e 6e 75 } //01 00  crutop.nu
		$a_01_12 = {66 69 6c 65 73 65 61 72 63 68 2e 72 75 } //01 00  filesearch.ru
		$a_01_13 = {6b 69 64 6f 73 2d 62 61 6e 6b 2e 72 75 } //01 00  kidos-bank.ru
		$a_01_14 = {6b 6f 6e 66 69 73 6b 61 74 2e 6f 72 67 } //01 00  konfiskat.org
		$a_01_15 = {6d 61 73 74 65 72 2d 78 2e 63 6f 6d } //01 00  master-x.com
		$a_01_16 = {70 61 72 65 78 2d 62 61 6e 6b 2e 72 75 } //01 00  parex-bank.ru
		$a_01_17 = {77 77 77 2e 72 65 64 6c 69 6e 65 2e 72 75 } //01 00  www.redline.ru
		$a_01_18 = {78 77 61 72 65 2e 63 6a 62 2e 6e 65 74 } //01 00  xware.cjb.net
		$a_01_19 = {61 73 65 63 68 6b 61 2e 72 75 } //01 00  asechka.ru
		$a_01_20 = {6d 61 7a 61 66 61 6b 61 2e 72 75 } //01 00  mazafaka.ru
		$a_01_21 = {66 65 74 68 61 72 64 2e 62 69 7a } //01 00  fethard.biz
		$a_01_22 = {6b 61 76 6b 61 7a 2e 74 76 } //01 00  kavkaz.tv
		$a_01_23 = {72 6f 62 6f 78 63 68 61 6e 67 65 2e 63 6f 6d } //01 00  roboxchange.com
		$a_01_24 = {29 42 31 6b 7a 61 6c 61 70 2e 65 78 65 } //01 00  )B1kzalap.exe
		$a_01_25 = {30 41 42 31 63 76 76 2e 72 75 } //01 00  0AB1cvv.ru
		$a_01_26 = {68 74 74 70 3a 2f 2f 25 73 2f 69 6e 64 65 78 2e 70 68 70 3f 69 64 3d 25 73 26 73 63 6e 3d 25 64 26 69 6e 66 3d 25 64 26 76 65 72 3d 31 39 26 63 6e 74 3d 25 73 } //01 00  http://%s/index.php?id=%s&scn=%d&inf=%d&ver=19&cnt=%s
		$a_01_27 = {68 74 74 70 3a 2f 2f 25 73 2f 69 6e 64 65 78 2e 70 68 70 3f 69 64 3d 25 73 26 73 63 6e 3d 25 64 26 69 6e 66 3d 25 64 26 76 65 72 3d 31 39 2d 32 26 63 6e 74 3d 25 73 } //03 00  http://%s/index.php?id=%s&scn=%d&inf=%d&ver=19-2&cnt=%s
		$a_01_28 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 5c 6f 64 73 70 65 61 2e 65 78 65 } //01 00  C:\WINDOWS\SYSTEM\odspea.exe
		$a_01_29 = {68 74 74 70 3a 2f 2f 25 73 2f 69 6e 64 65 78 2e 70 68 70 3f 69 64 3d 25 73 26 73 63 6e 3d 25 64 26 69 6e 66 3d 25 64 26 76 65 72 3d 32 30 26 63 6e 74 3d 25 73 } //01 00  http://%s/index.php?id=%s&scn=%d&inf=%d&ver=20&cnt=%s
		$a_01_30 = {68 74 74 70 3a 2f 2f 25 73 2f 69 6e 64 65 78 2e 70 68 70 3f 69 64 3d 25 73 26 73 63 6e 3d 25 64 26 69 6e 66 3d 25 64 26 76 65 72 3d 31 39 2e 32 26 63 6e 74 3d 25 73 } //00 00  http://%s/index.php?id=%s&scn=%d&inf=%d&ver=19.2&cnt=%s
	condition:
		any of ($a_*)
 
}