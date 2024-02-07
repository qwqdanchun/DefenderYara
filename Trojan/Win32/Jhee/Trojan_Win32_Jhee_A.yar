
rule Trojan_Win32_Jhee_A{
	meta:
		description = "Trojan:Win32/Jhee.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 65 6e 64 6f 72 5f 53 68 61 72 65 4d 65 6d 6f 72 79 00 00 6d 69 63 72 6f 73 6f 66 74 5f 6c 6f 63 6b 00 00 25 75 00 00 43 3a 5c 00 75 3d 00 00 5b 6d 61 69 6e 5d 00 00 76 3d 00 00 25 73 00 00 22 2c 41 6c 77 61 79 73 00 00 00 00 72 75 6e 64 6c 6c 33 32 20 22 00 00 25 73 5c 44 6f 77 6e 6c 6f 7e 31 5c 25 73 2e 64 6c 6c 00 00 66 6b 77 00 50 4f 53 54 00 00 00 00 48 54 54 50 2f 31 2e 31 00 00 00 00 2a 2f 2a 00 54 4d 00 00 53 6f 66 74 77 61 72 65 5c 41 44 00 } //01 00 
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 70 6f } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\po
		$a_01_2 = {6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e } //01 00  licies\Explorer\Run
		$a_01_3 = {4e 65 66 6b 68 65 55 3c 30 31 30 3c 48 3e 31 24 39 3f 4d 3a 24 3d 6d 31 3a 24 48 3c 3a 3a 24 30 38 3e 3d 30 4d 30 3e 3a 4d 30 31 } //01 00  NefkheU<010<H>1$9?M:$=m1:$H<::$08>=0M0>:M01
		$a_01_4 = {57 69 6e 53 74 61 30 5c 44 65 66 61 75 6c 74 } //00 00  WinSta0\Default
	condition:
		any of ($a_*)
 
}