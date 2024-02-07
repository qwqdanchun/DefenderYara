
rule Trojan_Win32_Rovnix_SA{
	meta:
		description = "Trojan:Win32/Rovnix.SA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 37 33 2e 32 30 38 2e 31 36 30 2e 34 35 } //01 00  173.208.160.45
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 56 00 6f 00 6c 00 6d 00 67 00 72 00 6d 00 6e 00 74 00 48 00 6f 00 6d 00 65 00 } //01 00  SOFTWARE\VolmgrmntHome
		$a_01_2 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 30 00 31 00 38 00 37 00 39 00 46 00 37 00 33 00 2e 00 73 00 79 00 73 00 } //01 00  \system32\drivers\01879F73.sys
		$a_01_3 = {57 49 4e 44 4f 57 53 5c 54 65 6d 70 5c 4d 70 43 7a 30 31 2e 74 6d 70 } //00 00  WINDOWS\Temp\MpCz01.tmp
	condition:
		any of ($a_*)
 
}