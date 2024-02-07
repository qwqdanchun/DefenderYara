
rule Trojan_Win32_VB_KT{
	meta:
		description = "Trojan:Win32/VB.KT,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 08 00 00 0a 00 "
		
	strings :
		$a_00_0 = {41 74 69 4b 75 20 4c 6f 72 6f } //0a 00  AtiKu Loro
		$a_00_1 = {53 6f 63 63 65 72 20 4d 61 6e 69 61 2e 65 78 65 } //0a 00  Soccer Mania.exe
		$a_00_2 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //0a 00  OpenProcess
		$a_00_3 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //0a 00  AdjustTokenPrivileges
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_00_5 = {5c 00 42 00 75 00 61 00 74 00 20 00 56 00 69 00 72 00 75 00 73 00 5c 00 56 00 69 00 72 00 75 00 73 00 20 00 56 00 42 00 42 00 45 00 47 00 4f 00 5c 00 4b 00 6f 00 6c 00 61 00 62 00 6f 00 72 00 61 00 73 00 69 00 20 00 62 00 61 00 72 00 75 00 20 00 53 00 6f 00 63 00 63 00 65 00 72 00 56 00 69 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  \Buat Virus\Virus VBBEGO\Kolaborasi baru SoccerVir\Project1.vbp
		$a_00_6 = {55 00 64 00 61 00 68 00 20 00 79 00 61 00 63 00 68 00 20 00 62 00 79 00 65 00 20 00 2d 00 20 00 62 00 79 00 65 00 21 00 20 00 43 00 75 00 70 00 20 00 2d 00 20 00 63 00 75 00 70 00 20 00 77 00 61 00 77 00 20 00 2d 00 20 00 77 00 61 00 77 00 20 00 28 00 5e 00 5f 00 5e 00 29 00 20 00 2d 00 67 00 6f 00 61 00 61 00 6c 00 20 00 2d 00 2d 00 20 00 67 00 6f 00 6f 00 6f 00 61 00 6c 00 20 00 2d 00 2d 00 20 00 67 00 6f 00 6f 00 61 00 6c 00 20 00 21 00 21 00 21 00 } //01 00  Udah yach bye - bye! Cup - cup waw - waw (^_^) -goaal -- goooal -- gooal !!!
		$a_00_7 = {28 00 49 00 20 00 4c 00 4f 00 56 00 45 00 20 00 59 00 4f 00 55 00 20 00 41 00 4c 00 4c 00 29 00 20 00 3c 00 2f 00 68 00 34 00 3e 00 3c 00 2f 00 43 00 45 00 4e 00 54 00 45 00 52 00 3e 00 3c 00 2f 00 42 00 4f 00 44 00 59 00 3e 00 3c 00 2f 00 48 00 54 00 4d 00 4c 00 3e 00 } //00 00  (I LOVE YOU ALL) </h4></CENTER></BODY></HTML>
	condition:
		any of ($a_*)
 
}