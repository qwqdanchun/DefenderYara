
rule TrojanDownloader_Win32_Adload_BX{
	meta:
		description = "TrojanDownloader:Win32/Adload.BX,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {3c 61 72 06 3c 7a 77 02 2c 20 c3 } //01 00 
		$a_03_1 = {2e 74 6d 70 00 00 90 09 04 00 5c 90 00 } //01 00 
		$a_00_2 = {68 74 74 70 40 3a 2f 24 2f 63 40 77 6e 6f 40 76 74 2e 63 } //01 00  http@:/$/c@wno@vt.c
		$a_00_3 = {72 40 65 24 66 75 24 72 6c 24 3d } //01 00  r@e$fu$rl$=
		$a_00_4 = {72 40 65 24 66 75 40 72 6c 3d } //01 00  r@e$fu@rl=
		$a_00_5 = {72 65 40 66 75 24 72 6c 40 3d } //01 00  re@fu$rl@=
		$a_00_6 = {52 40 65 24 66 65 24 72 24 65 72 } //01 00  R@e$fe$r$er
		$a_00_7 = {26 73 40 6f 63 40 6b 24 3d 24 31 } //01 00  &s@oc@k$=$1
		$a_00_8 = {4d 6f 40 7a 69 24 6c 6c 61 } //01 00  Mo@zi$lla
		$a_00_9 = {73 69 24 64 40 65 62 40 61 72 5f 63 6c 40 69 40 63 6b 24 2e 61 40 73 70 } //00 00  si$d@eb@ar_cl@i@ck$.a@sp
	condition:
		any of ($a_*)
 
}