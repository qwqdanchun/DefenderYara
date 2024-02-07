
rule Worm_Win32_SillyShareCopy_R{
	meta:
		description = "Worm:Win32/SillyShareCopy.R,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //01 00  [AutoRun]
		$a_01_1 = {6f 00 70 00 65 00 6e 00 3d 00 } //01 00  open=
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 } //01 00  shellexecute=
		$a_01_3 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 63 00 41 00 63 00 63 00 5f 00 49 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 75 00 61 00 5f 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 } //01 00  select cAcc_Id from ua_account
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //00 00  Software\Microsoft\Windows NT\CurrentVersion\Winlogon
	condition:
		any of ($a_*)
 
}