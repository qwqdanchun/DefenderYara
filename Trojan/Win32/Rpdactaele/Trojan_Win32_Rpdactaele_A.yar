
rule Trojan_Win32_Rpdactaele_A{
	meta:
		description = "Trojan:Win32/Rpdactaele.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffff83 00 ffffff83 00 07 00 00 64 00 "
		
	strings :
		$a_80_0 = {63 38 62 61 37 33 64 32 2d 33 64 35 35 2d 34 32 39 63 2d 38 65 39 61 2d 63 34 34 66 30 30 36 66 36 39 66 63 } //c8ba73d2-3d55-429c-8e9a-c44f006f69fc  01 00 
		$a_80_1 = {70 72 6e 6d 73 30 30 33 2e 69 6e 66 5f 61 6d 64 36 34 2a 00 } //prnms003.inf_amd64*  01 00 
		$a_80_2 = {44 3a 28 41 3b 3b 46 41 3b 3b 3b 42 41 29 28 41 3b 4f 49 43 49 49 4f 3b 47 41 3b 3b 3b 42 41 29 28 41 3b 3b 46 41 3b 3b 3b 53 59 29 28 41 3b 4f 49 43 49 49 4f 3b 47 41 } //D:(A;;FA;;;BA)(A;OICIIO;GA;;;BA)(A;;FA;;;SY)(A;OICIIO;GA  01 00 
		$a_80_3 = {44 3a 28 41 3b 3b 46 41 3b 3b 3b 57 44 29 } //D:(A;;FA;;;WD)  0a 00 
		$a_80_4 = {6e 63 61 6c 72 70 63 } //ncalrpc  0a 00 
		$a_80_5 = {5a 77 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 46 69 6c 65 } //ZwSetInformationFile  0a 00 
		$a_80_6 = {52 70 63 42 69 6e 64 69 6e 67 53 65 74 41 75 74 68 49 6e 66 6f 45 78 57 } //RpcBindingSetAuthInfoExW  00 00 
		$a_00_7 = {5d 04 00 00 12 be 03 80 5c 24 00 00 13 be 03 80 00 00 01 00 08 00 0e 00 ac 21 52 70 64 61 63 74 61 65 6c 65 2e 42 00 00 01 40 05 82 70 00 04 00 40 35 00 00 03 00 01 03 00 02 00 01 00 21 30 00 42 3f c0 e8 a5 00 00 00 00 02 00 01 00 4a 30 00 05 21 9c 10 39 00 00 00 00 02 00 01 00 20 30 00 0a 66 ed 57 48 00 00 00 00 5d 04 00 00 13 be } //03 80 
	condition:
		any of ($a_*)
 
}