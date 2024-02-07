
rule Trojan_Win32_Injector_AJ{
	meta:
		description = "Trojan:Win32/Injector.AJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 65 78 65 20 2f 43 20 50 49 4e 47 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 35 20 26 20 64 65 6c 20 2f 46 20 2f 51 } //01 00  cmd.exe /C PING 127.0.0.1 -n 5 & del /F /Q
		$a_01_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 50 00 49 00 4e 00 47 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 35 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 51 00 } //01 00  cmd.exe /C PING 127.0.0.1 -n 5 & del /F /Q
		$a_01_2 = {4c 6f 63 61 6c 5c 25 70 } //01 00  Local\%p
		$a_01_3 = {4c 00 6f 00 63 00 61 00 6c 00 5c 00 25 00 70 00 } //01 00  Local\%p
		$a_01_4 = {61 76 70 4e 65 78 65 } //01 00  avpNexe
		$a_01_5 = {b8 68 58 4d 56 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 } //01 00 
		$a_01_6 = {75 03 83 c0 20 88 06 46 80 3e 00 75 } //00 00 
	condition:
		any of ($a_*)
 
}