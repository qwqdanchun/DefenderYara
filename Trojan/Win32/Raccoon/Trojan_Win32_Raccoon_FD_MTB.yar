
rule Trojan_Win32_Raccoon_FD_MTB{
	meta:
		description = "Trojan:Win32/Raccoon.FD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 03 00 "
		
	strings :
		$a_81_0 = {72 6f 7a 6f 76 65 6a 75 73 65 63 } //03 00  rozovejusec
		$a_81_1 = {78 6f 67 6f 72 75 6c 65 79 6f 77 75 6b 69 6d 75 74 6f 78 75 6c } //03 00  xogoruleyowukimutoxul
		$a_81_2 = {7a 61 73 69 62 69 66 5f 66 61 67 35 33 } //03 00  zasibif_fag53
		$a_81_3 = {66 65 7a 75 73 65 6b 75 7a 75 2e 70 64 62 } //03 00  fezusekuzu.pdb
		$a_81_4 = {47 65 74 4e 61 6d 65 64 50 69 70 65 48 61 6e 64 6c 65 53 74 61 74 65 57 } //03 00  GetNamedPipeHandleStateW
		$a_81_5 = {52 65 6c 65 61 73 65 4d 75 74 65 78 } //03 00  ReleaseMutex
		$a_81_6 = {47 65 74 50 72 6f 63 65 73 73 50 72 69 6f 72 69 74 79 42 6f 6f 73 74 } //00 00  GetProcessPriorityBoost
	condition:
		any of ($a_*)
 
}