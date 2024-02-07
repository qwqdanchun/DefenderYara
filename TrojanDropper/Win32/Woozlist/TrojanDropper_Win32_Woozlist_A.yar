
rule TrojanDropper_Win32_Woozlist_A{
	meta:
		description = "TrojanDropper:Win32/Woozlist.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 3a 2f 2f 90 02 16 2f 52 65 6d 6f 74 65 2e 74 78 74 90 00 } //01 00 
		$a_03_1 = {00 70 6f 70 75 70 90 02 02 2e 64 61 74 90 00 } //01 00 
		$a_01_2 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  \drivers\etc\hosts
		$a_01_3 = {73 72 63 3d 22 25 75 72 6c 25 22 3e 3c 2f 69 66 72 61 6d 65 3e } //01 00  src="%url%"></iframe>
		$a_01_4 = {00 50 6f 6c 69 63 79 41 67 65 6e 74 00 } //01 00 
		$a_01_5 = {77 73 32 5f 33 32 2e 64 6c 6c 5c 68 6f 6f 6b 64 66 } //01 00  ws2_32.dll\hookdf
		$a_01_6 = {25 73 5c 63 6d 64 20 2f 63 20 72 64 20 22 25 73 22 20 2f 53 20 2f 51 } //01 00  %s\cmd /c rd "%s" /S /Q
		$a_03_7 = {52 61 6e 64 6f 6d 4f 70 65 6e 55 72 6c 90 02 20 4c 6f 63 6b 48 6f 73 74 73 90 02 20 43 6f 6e 74 72 6f 6c 49 45 90 02 20 45 6d 62 65 64 55 72 6c 90 00 } //03 00 
		$a_01_8 = {50 72 6f 63 65 73 73 4d 6f 69 6e 74 65 72 } //00 00  ProcessMointer
		$a_00_9 = {5d 04 00 00 eb } //35 03 
	condition:
		any of ($a_*)
 
}