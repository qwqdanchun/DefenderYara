
rule Trojan_Win32_Adclicker_H{
	meta:
		description = "Trojan:Win32/Adclicker.H,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 07 00 00 0a 00 "
		
	strings :
		$a_00_0 = {64 61 74 65 00 00 00 00 32 30 30 37 30 31 30 31 } //0a 00 
		$a_00_1 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 31 3b 20 70 63 61 67 65 6e 74 } //0a 00  User-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; pcagent
		$a_00_2 = {5c 44 6f 77 6e 6c 6f 61 64 65 64 20 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 64 65 73 6b 74 6f 70 2e 69 6e 69 } //01 00  \Downloaded Program Files\desktop.ini
		$a_02_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 90 02 0f 2e 90 03 03 03 6e 65 74 63 6f 6d 2f 6e 6f 74 65 70 61 64 2e 65 78 65 00 90 00 } //01 00 
		$a_00_4 = {49 45 48 65 6c 70 65 72 2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //01 00  䕉效灬牥䐮䱌䐀汬慃啮汮慯乤睯
		$a_00_5 = {63 68 75 6e 6b 65 64 00 49 45 46 72 61 6d 65 00 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //01 00  档湵敫d䕉牆浡e湉整湲瑥䔠灸潬敲彲敓癲牥
		$a_00_6 = {72 65 70 6f 72 74 2e 70 68 70 3f 74 79 70 65 3d 63 6c 69 63 6b 26 74 61 73 6b 69 64 3d } //00 00  report.php?type=click&taskid=
	condition:
		any of ($a_*)
 
}