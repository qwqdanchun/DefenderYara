
rule Backdoor_Win32_Darkmoon_MR_MTB{
	meta:
		description = "Backdoor:Win32/Darkmoon.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 5b 03 d8 89 5d 90 01 01 8b 5d 90 01 01 8a 03 8b 5d 90 01 01 88 03 58 5b 59 eb 90 00 } //01 00 
		$a_01_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 5c 4e 65 74 77 6f 72 6b 5c 4c 6d 48 6f 73 74 73 } //01 00  SYSTEM\CurrentControlSet\Control\SafeBoot\Network\LmHosts
		$a_01_2 = {42 6c 61 63 6b 4d 6f 6f 6e 20 52 75 6e 54 69 6d 65 20 45 72 72 6f 72 3a } //00 00  BlackMoon RunTime Error:
	condition:
		any of ($a_*)
 
}