
rule Trojan_Win32_Rofin_A{
	meta:
		description = "Trojan:Win32/Rofin.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 75 6c 74 69 5c 52 65 6c 65 61 73 65 5c 6d 75 6c 74 69 2e 70 64 62 } //01 00  multi\Release\multi.pdb
		$a_01_1 = {6d 69 6e 69 69 65 } //05 00  miniie
		$a_01_2 = {73 6f 67 6f 75 2e 63 6f 6d 2f 3f 37 31 30 31 37 2d 30 30 30 31 } //01 00  sogou.com/?71017-0001
		$a_00_3 = {7b 39 41 34 44 44 41 36 31 2d 31 44 33 41 2d 34 39 42 37 2d 39 38 34 39 2d 44 41 43 36 43 44 33 30 41 33 39 33 7d } //05 00  {9A4DDA61-1D3A-49B7-9849-DAC6CD30A393}
		$a_03_4 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 5c 90 02 03 2e 69 6e 69 90 00 } //01 00 
		$a_01_5 = {44 50 72 6f 45 78 2e 73 79 73 } //01 00  DProEx.sys
		$a_01_6 = {72 75 6e 2e 62 61 74 } //00 00  run.bat
		$a_00_7 = {78 c3 00 00 14 00 14 00 08 00 00 05 } //00 0f 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Rofin_A_2{
	meta:
		description = "Trojan:Win32/Rofin.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {6c 6f 67 2e 73 6f 6f 6d 65 6e 67 2e 63 6f 6d } //05 00  log.soomeng.com
		$a_01_1 = {6c 6f 67 2e 7a 7a 69 6e 66 6f 72 2e 63 6e } //05 00  log.zzinfor.cn
		$a_01_2 = {31 31 35 2e 32 33 38 2e 32 35 31 2e 35 36 } //01 00  115.238.251.56
		$a_01_3 = {7b 34 44 33 36 45 39 37 32 2d 45 33 32 35 2d 31 31 43 45 2d 42 46 43 31 2d 30 38 30 30 32 42 45 31 30 33 31 38 7d } //01 00  {4D36E972-E325-11CE-BFC1-08002BE10318}
		$a_01_4 = {27 62 64 67 6e 67 6f 64 6f 6d 27 3b } //01 00  'bdgngodom';
		$a_01_5 = {63 3a 5c 74 61 6f 2e 68 74 6d 6c } //01 00  c:\tao.html
		$a_01_6 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 5c 62 6c 6b 2e 69 6e 69 } //01 00  C:\Windows\System32\blk.ini
		$a_01_7 = {73 6f 67 6f 75 2e 63 6f 6d 2f 3f 37 31 30 31 37 2d 30 30 30 31 } //00 00  sogou.com/?71017-0001
		$a_00_8 = {78 c7 00 00 07 00 07 00 0a 00 00 01 00 0f 01 5c } //5c 2e 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Rofin_A_3{
	meta:
		description = "Trojan:Win32/Rofin.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 53 53 44 54 50 72 6f 63 65 73 73 } //01 00  \\.\SSDTProcess
		$a_01_1 = {48 69 64 65 53 79 73 2e 73 79 73 } //01 00  HideSys.sys
		$a_01_2 = {25 30 34 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 33 64 } //01 00  %04d%02d%02d%02d%02d%02d%03d
		$a_01_3 = {66 6c 69 73 74 2e 62 69 6e } //01 00  flist.bin
		$a_01_4 = {2f 70 6c 75 73 2f 63 6f 6e 66 69 67 2f } //01 00  /plus/config/
		$a_01_5 = {53 74 61 72 74 53 65 72 76 69 63 65 7e 20 25 30 38 78 } //01 00  StartService~ %08x
		$a_01_6 = {31 31 35 2e 32 33 38 2e 32 35 31 2e 35 36 } //01 00  115.238.251.56
		$a_01_7 = {6c 6f 67 2e 73 6f 6f 6d 65 6e 67 2e 63 6f 6d } //01 00  log.soomeng.com
		$a_01_8 = {77 77 77 2e 34 32 37 38 2e 63 6e } //01 00  www.4278.cn
		$a_01_9 = {6c 6f 67 2e 7a 7a 69 6e 66 6f 72 2e 63 6e } //00 00  log.zzinfor.cn
		$a_00_10 = {87 10 00 00 } //d4 78 
	condition:
		any of ($a_*)
 
}