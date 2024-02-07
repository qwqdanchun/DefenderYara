
rule Trojan_Win32_Eepal_A{
	meta:
		description = "Trojan:Win32/Eepal.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {72 65 67 69 6e 69 90 02 10 63 3a 5c 74 65 6d 70 2e 74 78 74 90 02 10 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 90 02 10 5c 52 65 63 79 63 6c 65 64 90 00 } //02 00 
		$a_01_1 = {5c 61 75 74 6f 72 75 6e 2e 69 6e 66 5c 53 70 69 64 65 72 4e 74 2e 65 78 65 } //01 00  \autorun.inf\SpiderNt.exe
		$a_01_2 = {75 73 65 72 69 6e 69 74 2e 65 78 65 2c 43 3a 5c 52 65 63 79 63 6c 65 64 5c 52 65 63 79 63 6c 65 64 2e 65 78 65 } //01 00  userinit.exe,C:\Recycled\Recycled.exe
		$a_03_3 = {63 68 65 61 6b 5f 68 6f 6f 6b 2e 64 6c 6c 90 02 10 53 4f 46 54 57 41 52 45 5c 54 45 4e 43 45 4e 54 5c 51 51 5c 90 00 } //01 00 
		$a_03_4 = {5b 43 41 50 53 5d 90 02 05 5b 45 53 43 5d 90 02 05 5b 50 47 55 50 5d 90 02 05 5b 50 47 44 4e 5d 90 02 05 5b 45 4e 44 5d 90 02 05 5b 48 4f 4d 45 5d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}