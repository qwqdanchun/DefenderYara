
rule Backdoor_MacOS_EggShell_G_MTB{
	meta:
		description = "Backdoor:MacOS/EggShell.G!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 74 6d 70 2f 2e 61 76 61 74 6d 70 } //01 00  /tmp/.avatmp
		$a_00_1 = {6c 61 75 6e 63 68 61 67 65 6e 74 73 2f 2e 65 73 70 6c 2e 70 6c 69 73 74 } //01 00  launchagents/.espl.plist
		$a_00_2 = {67 65 74 66 75 6c 6c 63 6d 64 } //01 00  getfullcmd
		$a_00_3 = {74 61 6b 65 70 69 63 74 75 72 65 } //00 00  takepicture
	condition:
		any of ($a_*)
 
}