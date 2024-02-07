
rule Backdoor_Win32_VB_AE{
	meta:
		description = "Backdoor:Win32/VB.AE,SIGNATURE_TYPE_PEHSTR,2b 00 2b 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {52 65 6d 6f 74 65 48 6f 73 74 49 50 } //0a 00  RemoteHostIP
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_2 = {5c 4d 65 73 73 65 6e 67 65 72 5c 6d 73 6d 73 67 73 2e 65 78 65 } //0a 00  \Messenger\msmsgs.exe
		$a_01_3 = {5c 00 48 00 75 00 67 00 6f 00 20 00 54 00 6f 00 6f 00 6c 00 73 00 5c 00 44 00 52 00 4f 00 4e 00 45 00 53 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  \Hugo Tools\DRONES\Proyecto1.vbp
		$a_01_4 = {4a 00 4f 00 49 00 4e 00 } //01 00  JOIN
		$a_01_5 = {55 00 53 00 45 00 52 00 } //01 00  USER
		$a_01_6 = {4e 00 49 00 43 00 4b 00 } //01 00  NICK
		$a_01_7 = {23 00 68 00 75 00 67 00 6f 00 6d 00 69 00 78 00 65 00 72 00 } //01 00  #hugomixer
		$a_01_8 = {73 00 65 00 74 00 20 00 64 00 6e 00 73 00 2a 00 } //01 00  set dns*
		$a_01_9 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 } //00 00  cmd.exe /c netsh
	condition:
		any of ($a_*)
 
}