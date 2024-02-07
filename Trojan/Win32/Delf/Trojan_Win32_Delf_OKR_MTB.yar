
rule Trojan_Win32_Delf_OKR_MTB{
	meta:
		description = "Trojan:Win32/Delf.OKR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {76 64 64 2e 64 61 74 } //01 00  vdd.dat
		$a_81_1 = {21 21 63 21 21 6f 21 21 6e 21 21 69 21 21 6d 21 21 65 21 21 21 2e 21 21 65 21 21 78 21 21 65 } //01 00  !!c!!o!!n!!i!!m!!e!!!.!!e!!x!!e
		$a_81_2 = {79 20 20 63 20 2e 20 20 62 20 20 61 20 20 74 } //01 00  y  c .  b  a  t
		$a_81_3 = {33 2e 76 62 73 } //01 00  3.vbs
		$a_81_4 = {71 2e 72 61 72 } //01 00  q.rar
		$a_81_5 = {43 20 20 41 20 20 50 20 20 54 20 20 55 20 20 52 20 20 41 20 20 57 20 20 45 20 20 42 20 20 43 20 20 41 20 20 4d } //01 00  C  A  P  T  U  R  A  W  E  B  C  A  M
		$a_01_6 = {42 00 61 00 72 00 43 00 6c 00 69 00 65 00 6e 00 74 00 56 00 69 00 65 00 77 00 2e 00 65 00 78 00 65 00 } //01 00  BarClientView.exe
		$a_81_7 = {73 63 20 63 6f 6e 66 69 67 20 6b 78 65 73 63 6f 72 65 20 73 74 61 72 74 3d 20 64 69 73 61 62 6c 65 64 } //01 00  sc config kxescore start= disabled
		$a_81_8 = {21 21 21 21 53 21 21 6e 21 21 69 21 21 70 21 21 65 21 21 53 21 21 21 77 21 21 6f 21 21 72 21 21 21 64 21 21 21 2e 21 21 65 21 21 78 21 21 21 65 21 21 } //01 00  !!!!S!!n!!i!!p!!e!!S!!!w!!o!!r!!!d!!!.!!e!!x!!!e!!
		$a_01_9 = {53 00 75 00 6e 00 77 00 61 00 72 00 64 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 54 00 65 00 63 00 68 00 6e 00 6f 00 6c 00 6f 00 67 00 79 00 20 00 43 00 6f 00 2e 00 4c 00 74 00 64 00 } //00 00  Sunward Information Technology Co.Ltd
	condition:
		any of ($a_*)
 
}