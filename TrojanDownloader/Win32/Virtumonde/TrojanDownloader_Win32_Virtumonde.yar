
rule TrojanDownloader_Win32_Virtumonde{
	meta:
		description = "TrojanDownloader:Win32/Virtumonde,SIGNATURE_TYPE_PEHSTR_EXT,12 00 11 00 0c 00 00 "
		
	strings :
		$a_01_0 = {61 64 64 69 6e 73 2f 2a 2e 2a 00 00 00 } //2
		$a_01_1 = {41 70 70 50 61 74 63 68 2f 2a 2e 2a 00 00 00 } //2
		$a_01_2 = {43 75 72 73 6f 72 73 2f 2a 2e 2a 00 00 00 } //2
		$a_01_3 = {52 65 67 69 73 74 72 61 74 69 6f 6e 2f 2a 2e 2a 00 00 00 } //2
		$a_01_4 = {57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 20 53 65 74 75 70 20 46 69 6c 65 73 2f 2a 2e 2a 00 00 00 } //2
		$a_01_5 = {00 00 00 6d 69 6c 00 67 6f 76 00 } //2
		$a_00_6 = {63 3a 5c 69 6e 73 74 31 2e 68 74 6d 00 00 00 00 63 3a 5c 78 2e 63 61 62 00 00 00 } //2
		$a_00_7 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 00 00 } //2
		$a_00_8 = {6f 70 65 6e 00 00 00 00 25 75 00 00 6d 79 5f 74 69 6d 65 3a 00 } //1
		$a_01_9 = {2a 57 69 6e 4c 6f 67 6f 6e } //1 *WinLogon
		$a_01_10 = {53 79 73 55 70 64 49 73 52 75 6e 6e 69 6e 67 4d 75 74 65 78 } //1 SysUpdIsRunningMutex
		$a_00_11 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 79 73 55 70 64 00 00 00 5f 75 70 64 61 74 65 2e 64 61 74 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_00_11  & 1)*1) >=17
 
}
rule TrojanDownloader_Win32_Virtumonde_2{
	meta:
		description = "TrojanDownloader:Win32/Virtumonde,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2d 00 08 00 00 "
		
	strings :
		$a_02_0 = {61 64 64 69 6e 73 ?? 2a 2e 2a 00 00 00 } //10
		$a_02_1 = {41 70 70 50 61 74 63 68 ?? 2a 2e 2a 00 00 00 } //10
		$a_02_2 = {43 75 72 73 6f 72 73 ?? 2a 2e 2a 00 00 00 } //10
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 } //10
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 79 73 55 70 64 } //5 SOFTWARE\Microsoft\SysUpd
		$a_00_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 4e 6f 74 69 66 79 5c 00 00 00 } //5
		$a_01_6 = {62 69 6e 3b 62 61 73 3b 62 61 6b 3b 63 61 62 3b 63 61 74 3b 63 6d 64 3b 63 6f 6d 3b 63 72 3b 63 3b 64 72 76 3b 64 62 3b 64 69 73 6b 3b 64 6c 6c 3b 64 6e 73 } //1 bin;bas;bak;cab;cat;cmd;com;cr;c;drv;db;disk;dll;dns
		$a_01_7 = {62 61 72 3b 76 61 3b 6e 61 74 69 3b 63 61 3b 63 61 63 3b 64 61 3b 70 61 3b 73 61 3b 69 62 6e 3b 61 62 73 3b 61 62 6b 3b 61 63 62 3b 61 63 74 3b 6d 63 64 3b 6f 63 6d 3b 72 63 3b 63 3b 72 64 76 } //1 bar;va;nati;ca;cac;da;pa;sa;ibn;abs;abk;acb;act;mcd;ocm;rc;c;rdv
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=45
 
}