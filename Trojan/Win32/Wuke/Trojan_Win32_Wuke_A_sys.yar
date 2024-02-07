
rule Trojan_Win32_Wuke_A_sys{
	meta:
		description = "Trojan:Win32/Wuke.A!sys,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 3a 5c 57 6f 6b 65 72 5c 47 65 74 54 75 72 65 4f 70 5c 6f 62 6a 66 72 65 5f 77 6e 65 74 5f 78 38 36 5c 69 33 38 36 5c 53 79 73 44 72 76 65 72 2e 70 64 62 } //0a 00  D:\Woker\GetTureOp\objfre_wnet_x86\i386\SysDrver.pdb
		$a_01_1 = {44 3a 5c 57 6f 6b 65 72 5c 44 52 49 56 45 52 5c 6f 62 6a 66 72 65 5f 77 6e 65 74 5f 78 38 36 5c 69 33 38 36 5c 53 79 73 44 72 76 65 72 2e 70 64 62 } //01 00  D:\Woker\DRIVER\objfre_wnet_x86\i386\SysDrver.pdb
		$a_01_2 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 53 00 79 00 73 00 44 00 72 00 76 00 65 00 72 00 } //01 00  \DosDevices\SysDrver
		$a_01_3 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4d 00 65 00 64 00 69 00 61 00 44 00 72 00 76 00 65 00 72 00 } //01 00  \Device\MediaDrver
		$a_01_4 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 4d 00 65 00 64 00 69 00 61 00 44 00 72 00 76 00 65 00 72 00 } //01 00  \DosDevices\MediaDrver
		$a_01_5 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 53 00 79 00 73 00 44 00 72 00 76 00 65 00 72 00 } //00 00  \Device\SysDrver
	condition:
		any of ($a_*)
 
}