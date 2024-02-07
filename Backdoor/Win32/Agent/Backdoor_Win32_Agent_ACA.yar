
rule Backdoor_Win32_Agent_ACA{
	meta:
		description = "Backdoor:Win32/Agent.ACA,SIGNATURE_TYPE_PEHSTR_EXT,2d 00 2c 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_1 = {44 6c 6c 46 75 6e 63 74 69 6f 6e 43 61 6c 6c } //0a 00  DllFunctionCall
		$a_00_2 = {5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4b 00 6f 00 73 00 68 00 69 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 62 00 61 00 63 00 6b 00 64 00 6f 00 6f 00 72 00 5c 00 67 00 61 00 6e 00 67 00 73 00 74 00 61 00 2e 00 76 00 62 00 70 00 } //0a 00  \Documents and Settings\Koshi\Desktop\backdoor\gangsta.vbp
		$a_00_3 = {49 00 20 00 77 00 69 00 6c 00 6c 00 20 00 6c 00 6f 00 76 00 65 00 20 00 79 00 6f 00 75 00 20 00 66 00 6f 00 72 00 65 00 76 00 65 00 72 00 20 00 52 00 69 00 6d 00 61 00 2e 00 20 00 45 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 20 00 66 00 6f 00 72 00 65 00 76 00 65 00 72 00 2e 00 } //01 00  I will love you forever Rima. Everything forever.
		$a_00_4 = {67 61 6e 67 73 74 61 } //01 00  gangsta
		$a_00_5 = {6d 6f 64 52 61 6e 64 6f 6d 7a } //01 00  modRandomz
		$a_00_6 = {63 6c 73 49 6e 66 65 63 74 } //01 00  clsInfect
		$a_00_7 = {63 6c 73 4e 65 74 49 6e 66 6f } //01 00  clsNetInfo
		$a_00_8 = {43 6f 6e 6e 65 63 74 65 64 } //01 00  Connected
		$a_00_9 = {57 53 41 53 74 61 72 74 75 70 } //01 00  WSAStartup
		$a_00_10 = {52 65 6d 6f 74 65 48 6f 73 74 49 50 } //00 00  RemoteHostIP
	condition:
		any of ($a_*)
 
}