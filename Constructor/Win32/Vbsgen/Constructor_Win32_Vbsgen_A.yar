
rule Constructor_Win32_Vbsgen_A{
	meta:
		description = "Constructor:Win32/Vbsgen.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {56 62 73 20 56 69 72 75 73 20 47 65 6e 65 72 61 74 6f 72 } //01 00  Vbs Virus Generator
		$a_01_1 = {53 00 65 00 74 00 20 00 44 00 69 00 73 00 6b 00 43 00 6f 00 70 00 79 00 20 00 3d 00 46 00 73 00 6f 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 54 00 65 00 78 00 74 00 46 00 69 00 6c 00 65 00 28 00 44 00 72 00 69 00 76 00 65 00 2e 00 44 00 72 00 69 00 76 00 65 00 4c 00 65 00 74 00 74 00 65 00 72 00 20 00 26 00 } //01 00  Set DiskCopy =Fso.CreateTextFile(Drive.DriveLetter &
		$a_01_2 = {46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 53 00 65 00 6e 00 64 00 50 00 6f 00 73 00 74 00 28 00 73 00 74 00 72 00 53 00 4d 00 54 00 50 00 5f 00 53 00 65 00 72 00 76 00 65 00 72 00 2c 00 20 00 73 00 74 00 72 00 54 00 6f 00 2c 00 20 00 73 00 74 00 72 00 46 00 72 00 6f 00 6d 00 2c 00 20 00 73 00 74 00 72 00 53 00 75 00 62 00 6a 00 65 00 63 00 74 00 2c 00 20 00 73 00 74 00 72 00 42 00 6f 00 64 00 79 00 29 00 } //01 00  Function SendPost(strSMTP_Server, strTo, strFrom, strSubject, strBody)
		$a_01_3 = {77 00 73 00 68 00 6c 00 2e 00 52 00 65 00 67 00 57 00 72 00 69 00 74 00 65 00 20 00 48 00 4b 00 43 00 55 00 72 00 75 00 6e 00 31 00 20 00 26 00 20 00 48 00 4b 00 4c 00 4d 00 72 00 75 00 6e 00 31 00 20 00 26 00 20 00 48 00 4b 00 4c 00 4d 00 72 00 75 00 6e 00 32 00 20 00 26 00 20 00 48 00 4b 00 4c 00 4d 00 72 00 75 00 6e 00 33 00 20 00 26 00 20 00 48 00 4b 00 43 00 55 00 72 00 75 00 6e 00 35 00 } //01 00  wshl.RegWrite HKCUrun1 & HKLMrun1 & HKLMrun2 & HKLMrun3 & HKCUrun5
		$a_01_4 = {73 00 74 00 72 00 46 00 6f 00 6c 00 64 00 65 00 72 00 20 00 3d 00 44 00 72 00 69 00 2e 00 44 00 72 00 69 00 76 00 65 00 4c 00 65 00 74 00 74 00 65 00 72 00 20 00 26 00 } //01 00  strFolder =Dri.DriveLetter &
		$a_01_5 = {49 00 45 00 2e 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 42 00 61 00 72 00 20 00 3d 00 20 00 46 00 61 00 6c 00 73 00 65 00 } //00 00  IE.AddressBar = False
	condition:
		any of ($a_*)
 
}