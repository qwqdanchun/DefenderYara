
rule Backdoor_Win32_Zegost{
	meta:
		description = "Backdoor:Win32/Zegost,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 6c 58 25 69 6b 5c 6c 61 62 6f 6c 47 73 25 73 25 } //01 00  llX%ik\labolGs%s%
		$a_01_1 = {6b 2d 20 65 78 65 2e 74 73 6f 68 } //01 00  k- exe.tsoh
		$a_01_2 = {2e 33 33 32 32 2e 6f 72 67 } //01 00  .3322.org
		$a_01_3 = {25 73 6f 74 25 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 25 73 20 25 73 25 73 25 73 } //00 00  %sot%%\System32\svc%s %s%s%s
		$a_01_4 = {00 61 7b } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Zegost_2{
	meta:
		description = "Backdoor:Win32/Zegost,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 78 68 6a 6d 6a 6a 2e 64 61 74 } //01 00  \xhjmjj.dat
		$a_01_1 = {4e 65 74 53 75 62 4b 65 79 } //01 00  NetSubKey
		$a_01_2 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 25 73 3a 38 30 2f 68 74 74 70 3a 2f 2f 25 73 } //01 00  Referer: http://%s:80/http://%s
		$a_01_3 = {5b 43 61 70 73 4c 6f 63 6b 5d } //01 00  [CapsLock]
		$a_01_4 = {3a 5d 20 25 73 } //01 00  :] %s
		$a_01_5 = {3a 5d 25 64 2d 25 64 2d 25 64 20 20 25 64 3a 25 64 3a 25 64 } //01 00  :]%d-%d-%d  %d:%d:%d
		$a_01_6 = {3c 45 6e 74 65 72 3e } //00 00  <Enter>
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Zegost_3{
	meta:
		description = "Backdoor:Win32/Zegost,SIGNATURE_TYPE_PEHSTR_EXT,07 00 03 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {c6 01 7f c6 45 90 01 01 6b c6 45 90 01 01 65 c6 45 90 01 01 72 c6 45 90 01 01 6e c6 45 90 01 01 65 c6 45 90 01 01 6c c6 45 90 01 01 33 c6 45 90 01 01 32 c6 45 90 01 01 2e c6 45 90 01 01 64 c6 45 90 01 01 6c c6 45 90 01 01 6c c6 45 90 01 01 00 8d 55 90 01 01 52 ff 15 90 00 } //01 00 
		$a_01_1 = {5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c 4e 65 74 77 6f 72 6b 5c 43 6f 6e 6e 65 63 74 69 6f 6e 73 5c 70 62 6b 5c 72 61 73 70 68 6f 6e 65 2e 70 62 6b } //01 00  \Application Data\Microsoft\Network\Connections\pbk\rasphone.pbk
		$a_01_2 = {4c 24 5f 52 61 73 44 65 66 61 75 6c 74 43 72 65 64 65 6e 74 69 61 6c 73 23 30 } //01 00  L$_RasDefaultCredentials#0
		$a_00_3 = {49 6e 73 74 61 6c 6c 4d 6f 64 75 6c 65 } //00 00  InstallModule
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Zegost_4{
	meta:
		description = "Backdoor:Win32/Zegost,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {47 c6 44 24 90 01 01 68 c6 44 24 90 01 01 30 c6 44 24 90 01 01 73 90 00 } //01 00 
		$a_01_1 = {64 64 6f 73 2e 68 61 63 6b 78 6b 2e 63 6f 6d } //01 00  ddos.hackxk.com
		$a_01_2 = {6e 75 52 5c 6e 6f 69 73 72 65 56 74 6e 65 72 72 75 43 5c 73 77 6f 64 6e 69 57 5c 74 66 6f 73 6f 72 63 69 4d 5c 45 52 41 57 54 46 4f 53 } //01 00  nuR\noisreVtnerruC\swodniW\tfosorciM\ERAWTFOS
		$a_01_3 = {57 69 6e 53 74 61 30 5c 44 65 66 61 75 6c 74 00 47 68 30 73 74 20 55 70 64 61 74 65 } //00 00  楗卮慴尰敄慦汵t桇猰⁴灕慤整
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}