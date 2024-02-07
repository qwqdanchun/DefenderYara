
rule Trojan_Win32_Grazie_A{
	meta:
		description = "Trojan:Win32/Grazie.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 49 43 52 4f 53 4f 46 54 5c 57 49 4e 44 4f 57 53 5c 43 55 52 52 45 4e 54 56 45 52 53 49 4f 4e 5c 52 55 4e } //01 00  SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\RUN
		$a_01_1 = {44 65 66 57 61 74 63 68 2e 65 78 65 } //01 00  DefWatch.exe
		$a_01_2 = {43 3a 5c 54 45 4d 50 5c 41 64 6f 62 65 41 52 4d 2e 65 78 65 } //01 00  C:\TEMP\AdobeARM.exe
		$a_01_3 = {57 69 6e 64 6f 77 73 2b 4e 54 2b 35 2e 31 } //01 00  Windows+NT+5.1
		$a_00_4 = {88 5c 24 24 88 5c 24 6c c6 44 24 30 7a c6 44 24 31 54 c6 44 24 32 58 c6 44 24 33 74 88 5c 24 34 c6 44 24 40 89 c6 44 24 41 50 88 4c 24 42 c6 44 24 43 47 c6 44 24 44 0d 88 44 24 45 c6 44 24 46 1a 88 44 24 47 88 5c 24 48 c6 44 24 38 49 c6 44 24 39 45 88 4c 24 3a c6 44 24 3b 44 88 5c 24 3c 89 5c 24 60 89 5c 24 5c 89 9c 24 80 00 00 00 89 5c 24 68 ff 96 98 06 00 00 } //02 00 
		$a_03_5 = {8a 44 31 ff 8a 14 31 32 c2 8a d0 c0 ea 90 01 01 c0 e0 90 01 01 0a d0 88 14 31 49 75 90 01 01 8a 06 8a 4c 24 90 01 01 32 c1 8a c8 c0 e9 90 01 01 c0 e0 90 01 01 0a c8 88 0e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}