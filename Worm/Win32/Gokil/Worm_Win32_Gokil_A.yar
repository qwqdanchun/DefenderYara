
rule Worm_Win32_Gokil_A{
	meta:
		description = "Worm:Win32/Gokil.A,SIGNATURE_TYPE_PEHSTR,1f 00 1e 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6e 66 65 63 74 46 6c 61 73 68 44 69 73 6b } //0a 00  InfectFlashDisk
		$a_01_1 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 63 00 74 00 6c 00 6d 00 6f 00 6e 00 } //05 00  HKLM\Software\Microsoft\Windows\CurrentVersion\Run\ctlmon
		$a_01_2 = {56 42 41 36 2e 44 4c 4c } //05 00  VBA6.DLL
		$a_01_3 = {47 6f 4b 69 4c 4c } //01 00  GoKiLL
		$a_01_4 = {49 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 47 00 6f 00 4b 00 69 00 4c 00 4c 00 } //01 00  Infected by GoKiLL
		$a_01_5 = {43 00 69 00 6e 00 74 00 61 00 2e 00 64 00 6f 00 63 00 2e 00 65 00 78 00 65 00 } //00 00  Cinta.doc.exe
	condition:
		any of ($a_*)
 
}