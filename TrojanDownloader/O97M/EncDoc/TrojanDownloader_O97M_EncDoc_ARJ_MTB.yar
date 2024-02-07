
rule TrojanDownloader_O97M_EncDoc_ARJ_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ARJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 6e 6f 6e 6e 65 77 73 70 61 70 65 72 2e 63 6f 6d 2f 62 6f 74 2e 64 6c 6c } //01 00  https://nonnewspaper.com/bot.dll
		$a_01_1 = {68 74 74 70 73 3a 2f 2f 63 72 79 70 65 74 75 6e 69 61 2e 63 6f 6d 2f 63 72 79 70 74 2e 64 6c 6c } //01 00  https://crypetunia.com/crypt.dll
		$a_01_2 = {68 74 74 70 3a 2f 2f 32 30 35 2e 31 38 35 2e 31 32 32 2e 32 34 36 2f 77 32 31 64 78 4d } //01 00  http://205.185.122.246/w21dxM
		$a_01_3 = {68 74 74 70 3a 2f 2f 32 30 39 2e 31 34 31 2e 35 34 2e 31 36 31 2f 33 2e 62 69 6e } //01 00  http://209.141.54.161/3.bin
		$a_01_4 = {68 74 74 70 3a 2f 2f 69 6e 76 6f 69 63 65 37 6d 75 6b 73 7a 71 39 6e 62 70 61 37 6f 6e 6c 69 6e 65 2e 72 75 2f 63 69 72 6b 75 6d 66 6c 65 6b 73 2e 65 78 65 } //01 00  http://invoice7mukszq9nbpa7online.ru/cirkumfleks.exe
		$a_01_5 = {68 74 74 70 3a 2f 2f 7a 65 67 79 6e 2e 63 6f 6d 2f 6d 7a 70 71 6f 73 6a 66 2e 65 78 65 } //01 00  http://zegyn.com/mzpqosjf.exe
		$a_01_6 = {68 74 74 70 3a 2f 2f 72 69 73 77 65 67 2e 63 6f 6d 2f 66 6c 70 61 6f 71 6c 2e 65 78 65 } //01 00  http://risweg.com/flpaoql.exe
		$a_01_7 = {68 74 74 70 3a 2f 2f 6c 75 79 69 74 61 77 2e 63 6f 6d 2f 6f 6b 61 73 6c 65 2e 65 78 65 } //01 00  http://luyitaw.com/okasle.exe
		$a_01_8 = {68 74 74 70 3a 2f 2f 61 73 64 6a 67 6b 66 77 73 61 73 2e 63 6f 6d 2f 70 6c 6b 64 6d 63 2e 65 78 65 } //01 00  http://asdjgkfwsas.com/plkdmc.exe
		$a_01_9 = {68 74 74 70 3a 2f 2f 31 39 34 2e 35 2e 32 34 39 2e 31 30 37 2f 32 4e 71 75 78 51 5a 32 6f 4b 34 61 34 35 4c 2e 70 68 70 } //01 00  http://194.5.249.107/2NquxQZ2oK4a45L.php
		$a_01_10 = {68 74 74 70 3a 2f 2f 31 38 35 2e 31 38 30 2e 31 39 37 2e 36 36 2f 32 56 4a 44 5a 36 4a 61 71 7a 45 69 71 2e 70 68 70 } //01 00  http://185.180.197.66/2VJDZ6JaqzEiq.php
		$a_01_11 = {68 74 74 70 3a 2f 2f 31 38 35 2e 39 39 2e 32 2e 38 33 2f 66 52 54 65 31 7a 30 78 69 57 75 38 71 2e 70 68 70 } //01 00  http://185.99.2.83/fRTe1z0xiWu8q.php
		$a_01_12 = {68 74 74 70 3a 2f 2f 39 34 2e 31 34 30 2e 31 31 35 2e 34 38 2f 57 67 34 4e 49 39 34 35 39 38 71 42 46 2e 70 68 70 } //01 00  http://94.140.115.48/Wg4NI94598qBF.php
		$a_01_13 = {68 74 74 70 3a 2f 2f 34 35 2e 31 31 2e 31 38 33 2e 37 38 2f 36 66 30 34 65 30 62 65 34 36 71 62 34 5a 63 2e 70 68 70 } //01 00  http://45.11.183.78/6f04e0be46qb4Zc.php
		$a_01_14 = {68 74 74 70 3a 2f 2f 31 39 38 2e 34 36 2e 31 39 38 2e 31 30 35 2f 71 36 70 64 4a 33 6c 37 59 71 32 57 2e 70 68 70 } //01 00  http://198.46.198.105/q6pdJ3l7Yq2W.php
		$a_01_15 = {68 74 74 70 3a 2f 2f 72 6f 63 65 73 69 2e 63 6f 6d 2f 6d 6e 63 65 6a 64 2e 65 78 65 } //01 00  http://rocesi.com/mncejd.exe
		$a_01_16 = {68 74 74 70 3a 2f 2f 67 75 72 75 6f 66 62 75 6c 6c 65 74 2e 78 79 7a 2f 6d 6e 63 65 6a 64 2e 65 78 65 } //01 00  http://guruofbullet.xyz/mncejd.exe
		$a_01_17 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 76 69 63 74 6f 72 69 61 2d 76 69 65 77 2e 63 6f 6d 2f 76 69 65 77 2f 6c 6f 63 6f 6d 6f 6b 6f 6e 65 77 2e 70 68 70 } //01 00  https://www.victoria-view.com/view/locomokonew.php
		$a_01_18 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_19 = {4a 4a 43 43 43 43 4a } //00 00  JJCCCCJ
	condition:
		any of ($a_*)
 
}