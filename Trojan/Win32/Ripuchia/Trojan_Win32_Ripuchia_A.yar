
rule Trojan_Win32_Ripuchia_A{
	meta:
		description = "Trojan:Win32/Ripuchia.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 47 65 74 52 65 6d 6f 74 65 43 6f 6e 74 72 6f 6c 43 6d 64 } //02 00  /GetRemoteControlCmd
		$a_01_1 = {2f 53 65 6e 64 42 69 6e 61 72 79 49 6d 61 67 65 46 69 6c 65 } //02 00  /SendBinaryImageFile
		$a_01_2 = {3a 00 20 00 47 00 65 00 74 00 52 00 65 00 6d 00 6f 00 74 00 65 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 43 00 6d 00 64 00 28 00 29 00 20 00 67 00 6f 00 74 00 3a 00 } //02 00  : GetRemoteControlCmd() got:
		$a_01_3 = {3a 00 20 00 43 00 6c 00 69 00 65 00 6e 00 74 00 57 00 65 00 62 00 63 00 61 00 6d 00 49 00 6e 00 66 00 6f 00 3a 00 } //02 00  : ClientWebcamInfo:
		$a_01_4 = {43 00 72 00 65 00 61 00 74 00 65 00 53 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 46 00 72 00 6f 00 6d 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 28 00 29 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 3a 00 } //01 00  CreateScreenshotFromDesktop() failed:
		$a_01_5 = {68 74 74 70 3a 2f 2f 6c 6f 63 61 6c 68 6f 73 74 3a 36 32 33 33 38 2f 43 68 69 70 73 65 74 73 79 6e 63 2e 61 73 6d 78 } //01 00  http://localhost:62338/Chipsetsync.asmx
		$a_01_6 = {20 00 2a 00 2a 00 2a 00 3d 00 3d 00 3e 00 20 00 48 00 6f 00 6f 00 6b 00 42 00 75 00 66 00 66 00 65 00 72 00 53 00 74 00 72 00 69 00 6e 00 67 00 3a 00 } //00 00   ***==> HookBufferString:
		$a_00_7 = {5d 04 00 00 67 29 } //03 80 
	condition:
		any of ($a_*)
 
}