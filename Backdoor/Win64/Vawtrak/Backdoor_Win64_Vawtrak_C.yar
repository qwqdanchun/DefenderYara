
rule Backdoor_Win64_Vawtrak_C{
	meta:
		description = "Backdoor:Win64/Vawtrak.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 01 6d 4e c6 41 05 39 30 00 00 89 01 } //01 00 
		$a_01_1 = {48 8b 74 24 60 85 db 74 16 80 3e 4d 75 06 80 7e 01 5a 74 1f } //01 00 
		$a_01_2 = {32 03 48 ff c3 88 06 48 ff c6 49 ff ce 75 e7 } //01 00 
		$a_01_3 = {42 8a 04 09 41 32 c2 45 03 d0 41 ff c0 41 88 01 49 ff c1 41 83 f8 10 72 e7 } //01 00 
		$a_01_4 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 2f 69 3a 22 25 73 22 20 22 25 73 } //01 00  regsvr32.exe /s /i:"%s" "%s
		$a_01_5 = {50 49 44 3a 20 25 75 20 5b 25 30 2e 32 75 3a 25 30 2e 32 75 3a 25 30 2e 32 75 5d } //01 00  PID: %u [%0.2u:%0.2u:%0.2u]
	condition:
		any of ($a_*)
 
}