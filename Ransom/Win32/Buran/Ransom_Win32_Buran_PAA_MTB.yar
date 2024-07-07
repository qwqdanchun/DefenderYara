
rule Ransom_Win32_Buran_PAA_MTB{
	meta:
		description = "Ransom:Win32/Buran.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,3c 00 3c 00 06 00 00 "
		
	strings :
		$a_01_0 = {3c 00 5c 00 22 00 20 00 2d 00 73 00 74 00 61 00 72 00 74 00 22 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 46 00 20 00 2f 00 44 00 20 00 22 00 5c 00 22 00 6f 00 72 00 69 00 74 00 79 00 20 00 53 00 75 00 62 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 22 00 20 00 2f 00 56 00 20 00 22 00 } //10 <\" -start"EG_SZ /F /D "\"ority Subsystem Servicedows\CurrentVersion\Run" /V "
		$a_01_1 = {51 55 49 43 4b 20 3e 3e 3e 20 55 4e 44 45 43 52 59 50 54 41 42 4c 45 20 3e 3e 3e 20 45 4e 43 52 59 50 54 49 4e 47 20 52 41 4e 44 4f 4d 20 46 49 4c 45 42 4c 4f 43 4b 53 20 2f 2f 2f 20 54 48 49 53 20 49 53 20 42 55 52 41 4e 20 2f 2f 2f 20 47 45 4e 45 52 41 54 49 4f 4e } //10 QUICK >>> UNDECRYPTABLE >>> ENCRYPTING RANDOM FILEBLOCKS /// THIS IS BURAN /// GENERATION
		$a_01_2 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 22 00 20 00 2f 00 56 00 20 00 22 00 } //10 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /V "
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 42 75 72 61 6e 20 56 5c 53 65 72 76 69 63 65 5c 50 75 62 6c 69 63 20 4b 65 79 } //10 Software\Buran V\Service\Public Key
		$a_01_4 = {43 00 3a 00 5c 00 49 00 4e 00 54 00 45 00 52 00 4e 00 41 00 4c 00 5c 00 52 00 45 00 4d 00 4f 00 54 00 45 00 2e 00 45 00 58 00 45 00 } //10 C:\INTERNAL\REMOTE.EXE
		$a_01_5 = {6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //10 lsass.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=60
 
}