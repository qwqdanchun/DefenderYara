
rule Trojan_Win32_Dermon_A{
	meta:
		description = "Trojan:Win32/Dermon.A,SIGNATURE_TYPE_PEHSTR,0a 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 34 2e 32 33 37 2e 35 37 2e 31 31 39 2f 77 6d 65 78 2f 66 69 6c 74 72 2e 74 78 74 } //01 00  64.237.57.119/wmex/filtr.txt
		$a_01_1 = {36 34 2e 32 33 37 2e 35 37 2e 31 31 39 2f 77 6d 65 78 2f 69 70 6c 6f 67 2e 74 78 74 } //01 00  64.237.57.119/wmex/iplog.txt
		$a_01_2 = {36 34 2e 32 33 37 2e 35 37 2e 31 31 39 2f 77 6d 65 78 2f 70 73 6c 6f 67 2e 74 78 74 } //02 00  64.237.57.119/wmex/pslog.txt
		$a_01_3 = {4c 6f 61 64 65 64 20 6e 65 77 20 61 64 64 72 3a 20 25 73 } //02 00  Loaded new addr: %s
		$a_01_4 = {42 65 67 69 6e 20 6c 6f 61 64 20 75 72 6c 2e 2e 2e 20 53 74 72 69 6e 67 3a 20 25 73 2c 20 48 6f 73 74 3a 20 25 73 20 53 63 72 69 70 74 3a 20 25 73 } //01 00  Begin load url... String: %s, Host: %s Script: %s
		$a_01_5 = {63 3a 5c 6c 6f 67 69 2e 6c 6f 67 } //01 00  c:\logi.log
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 41 75 6f 67 75 5c } //01 00  Software\Auogu\
		$a_01_7 = {2f 25 73 2f 6c 2e 70 68 70 3f 64 3d 25 73 26 61 3d 25 73 26 63 3d 25 73 } //00 00  /%s/l.php?d=%s&a=%s&c=%s
	condition:
		any of ($a_*)
 
}