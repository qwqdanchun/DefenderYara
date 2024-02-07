
rule Trojan_Win64_Winexert_C_bit{
	meta:
		description = "Trojan:Win64/Winexert.C!bit,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {77 00 69 00 6e 00 6c 00 73 00 65 00 63 00 73 00 72 00 76 00 2e 00 73 00 79 00 73 00 } //0a 00  winlsecsrv.sys
		$a_01_1 = {42 00 46 00 42 00 31 00 31 00 44 00 36 00 45 00 2d 00 31 00 43 00 37 00 45 00 2d 00 34 00 37 00 38 00 34 00 2d 00 39 00 46 00 43 00 30 00 2d 00 31 00 41 00 32 00 33 00 33 00 38 00 39 00 39 00 46 00 34 00 41 00 42 00 } //0a 00  BFB11D6E-1C7E-4784-9FC0-1A233899F4AB
		$a_03_2 = {5c 53 6d 61 72 74 45 6e 67 69 6e 65 5c 42 69 6e 5c 78 36 34 5c 90 02 20 5c 45 58 90 02 10 2e 70 64 62 90 00 } //01 00 
		$a_01_3 = {4d 00 75 00 74 00 65 00 78 00 5f 00 42 00 49 00 44 00 55 00 49 00 31 00 38 00 4e 00 47 00 55 00 49 00 44 00 5f 00 } //01 00  Mutex_BIDUI18NGUID_
		$a_01_4 = {25 00 25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 25 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6b 00 20 00 25 00 73 00 } //00 00  %%SystemRoot%%\System32\svchost.exe -k %s
	condition:
		any of ($a_*)
 
}