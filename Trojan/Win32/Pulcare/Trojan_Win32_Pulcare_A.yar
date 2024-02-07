
rule Trojan_Win32_Pulcare_A{
	meta:
		description = "Trojan:Win32/Pulcare.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 75 75 71 74 3b 30 30 } //01 00  iuuqt;00
		$a_01_1 = {68 00 7b 00 73 00 6f 00 72 00 75 00 68 00 75 00 31 00 68 00 7b 00 68 00 } //01 00  h{soruhu1h{h
		$a_01_2 = {25 73 3f 76 3d 31 26 74 69 64 3d 25 73 26 63 69 64 3d 25 73 26 74 3d 65 76 65 6e 74 26 65 63 3d 25 73 26 65 61 3d 25 73 26 65 6c 3d 25 73 26 7a 3d 25 64 26 64 65 3d 55 54 46 2d 38 26 63 64 31 3d 25 73 26 63 64 32 3d 25 73 26 63 64 33 3d 25 73 } //01 00  %s?v=1&tid=%s&cid=%s&t=event&ec=%s&ea=%s&el=%s&z=%d&de=UTF-8&cd1=%s&cd2=%s&cd3=%s
		$a_01_3 = {25 73 3f 69 64 3d 25 73 26 72 3d 26 6c 67 3d 7a 68 2d 63 6e 26 6e 74 69 6d 65 3d 6e 6f 6e 65 26 63 6e 7a 7a 5f 65 69 64 3d 25 73 26 73 68 6f 77 70 3d 31 39 32 30 78 31 30 38 30 26 65 69 3d 25 73 7c 25 73 7c 25 73 7c 30 7c 26 68 3d 31 26 72 6e 64 3d 25 75 } //01 00  %s?id=%s&r=&lg=zh-cn&ntime=none&cnzz_eid=%s&showp=1920x1080&ei=%s|%s|%s|0|&h=1&rnd=%u
		$a_01_4 = {25 00 73 00 5c 00 70 00 6c 00 75 00 67 00 69 00 6e 00 2e 00 64 00 61 00 74 00 } //01 00  %s\plugin.dat
		$a_01_5 = {25 00 73 00 5c 00 43 00 61 00 72 00 65 00 66 00 72 00 65 00 65 00 50 00 6c 00 75 00 67 00 69 00 6e 00 2e 00 64 00 6c 00 6c 00 } //01 00  %s\CarefreePlugin.dll
		$a_03_6 = {6f 00 70 00 65 00 6e 00 90 01 04 2f 00 73 00 20 00 2f 00 75 00 20 00 22 00 25 00 73 00 22 00 90 01 04 72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 90 00 } //00 00 
		$a_00_7 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}