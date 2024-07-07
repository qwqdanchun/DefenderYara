
rule Worm_Win32_Bruhorn_A{
	meta:
		description = "Worm:Win32/Bruhorn.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0f 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //2 SOFTWARE\Microsoft\Security Center
		$a_01_1 = {41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 4e 00 6f 00 74 00 69 00 66 00 79 00 } //2 AntiVirusDisableNotify
		$a_01_2 = {46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 4e 00 6f 00 74 00 69 00 66 00 79 00 } //1 FirewallDisableNotify
		$a_01_3 = {48 00 49 00 4a 00 41 00 43 00 4b 00 54 00 48 00 49 00 53 00 } //2 HIJACKTHIS
		$a_01_4 = {41 00 56 00 49 00 52 00 41 00 } //1 AVIRA
		$a_01_5 = {5c 00 4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //2 \New Folder.exe
		$a_01_6 = {5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 68 00 74 00 74 00 } //2 \Folder.htt
		$a_01_7 = {50 00 65 00 72 00 73 00 69 00 73 00 74 00 4d 00 6f 00 6e 00 69 00 6b 00 65 00 72 00 3d 00 66 00 69 00 6c 00 65 00 3a 00 } //2 PersistMoniker=file:
		$a_01_8 = {62 00 61 00 74 00 66 00 69 00 6c 00 65 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //1 batfile\shell\open\command
		$a_01_9 = {4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 } //1 New Folder.
		$a_01_10 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 77 00 72 00 69 00 74 00 65 00 6c 00 6e 00 28 00 } //1 document.writeln(
		$a_01_11 = {53 00 63 00 72 00 65 00 65 00 6e 00 53 00 61 00 76 00 65 00 72 00 49 00 73 00 53 00 65 00 63 00 75 00 72 00 65 00 } //1 ScreenSaverIsSecure
		$a_01_12 = {50 00 43 00 20 00 4d 00 65 00 64 00 69 00 61 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 4c 00 6f 00 67 00 20 00 46 00 69 00 6c 00 65 00 } //-18 PC Media Antivirus Log File
		$a_01_13 = {50 43 20 4d 65 64 69 61 20 41 6e 74 69 76 69 72 75 73 20 4c 6f 67 20 46 69 6c 65 } //-18 PC Media Antivirus Log File
		$a_01_14 = {70 63 6d 61 76 2d 6c 6f 67 } //-18 pcmav-log
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*-18+(#a_01_13  & 1)*-18+(#a_01_14  & 1)*-18) >=11
 
}