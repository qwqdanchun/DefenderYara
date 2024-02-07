
rule Backdoor_Win32_Htbot_C{
	meta:
		description = "Backdoor:Win32/Htbot.C,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3f 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 67 00 65 00 74 00 62 00 61 00 63 00 6b 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 } //01 00  ?command=getbackconnect
		$a_01_1 = {5c 00 4d 00 6e 00 74 00 6f 00 32 00 } //01 00  \Mnto2
		$a_01_2 = {66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 22 00 25 00 73 00 22 00 20 00 22 00 25 00 73 00 22 00 20 00 45 00 4e 00 41 00 42 00 4c 00 45 00 } //01 00  firewall add allowedprogram "%s" "%s" ENABLE
		$a_01_3 = {25 00 73 00 3f 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 75 00 70 00 64 00 61 00 74 00 65 00 26 00 69 00 64 00 3d 00 25 00 73 00 26 00 69 00 70 00 3d 00 25 00 73 00 26 00 70 00 6f 00 72 00 74 00 3d 00 25 00 64 00 } //01 00  %s?command=update&id=%s&ip=%s&port=%d
		$a_01_4 = {25 00 73 00 3f 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 67 00 68 00 6c 00 26 00 69 00 64 00 3d 00 25 00 73 00 } //01 00  %s?command=ghl&id=%s
		$a_01_5 = {5c 00 66 00 61 00 72 00 63 00 6c 00 65 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00  \farclen.exe
		$a_01_6 = {00 67 } //16 00  最
	condition:
		any of ($a_*)
 
}