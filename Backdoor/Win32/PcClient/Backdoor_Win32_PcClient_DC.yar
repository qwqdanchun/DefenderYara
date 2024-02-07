
rule Backdoor_Win32_PcClient_DC{
	meta:
		description = "Backdoor:Win32/PcClient.DC,SIGNATURE_TYPE_PEHSTR_EXT,48 00 48 00 0c 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 } //0a 00  \svchost.exe
		$a_01_1 = {44 6f 53 65 72 76 69 63 65 } //0a 00  DoService
		$a_00_2 = {25 73 25 30 38 78 2e 69 6e 69 } //0a 00  %s%08x.ini
		$a_00_3 = {47 6c 6f 62 61 6c 5c 70 73 25 30 38 78 } //0a 00  Global\ps%08x
		$a_00_4 = {31 39 32 2e 31 36 38 2e 30 2e } //0a 00  192.168.0.
		$a_00_5 = {64 6f 75 67 6c 61 73 35 32 30 2e 30 30 33 33 2e 63 6e } //0a 00  douglas520.0033.cn
		$a_00_6 = {4d 69 63 72 6f 73 6f 66 74 20 2e 4e 45 54 20 46 72 61 6d 65 77 6f 72 6b 20 54 50 4d } //01 00  Microsoft .NET Framework TPM
		$a_00_7 = {65 61 64 69 64 } //01 00  eadid
		$a_00_8 = {64 72 69 76 65 72 73 5c } //01 00  drivers\
		$a_00_9 = {6d 79 67 75 69 64 } //01 00  myguid
		$a_00_10 = {6d 79 70 61 72 65 6e 74 74 68 } //01 00  myparentth
		$a_00_11 = {79 72 75 61 77 66 68 6b } //00 00  yruawfhk
	condition:
		any of ($a_*)
 
}