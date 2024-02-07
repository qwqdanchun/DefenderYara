
rule Trojan_Win64_Emotetcrypt_KA_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.KA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 98 48 29 c2 8b 05 90 01 04 48 98 48 29 c2 8b 05 90 01 04 48 98 48 89 d1 48 29 c1 8b 05 90 01 04 48 63 d0 8b 05 90 01 04 48 98 48 29 c2 48 89 d0 48 01 c8 4c 01 c0 48 03 45 68 48 03 45 70 48 03 45 78 4c 01 f8 4c 01 f0 4c 01 e8 4c 01 e0 48 01 f8 48 01 f0 48 01 d8 4c 01 d8 4c 01 d0 48 01 c0 49 8d 14 01 8b 05 90 01 04 48 98 48 01 c0 48 29 c2 8b 05 90 01 04 48 98 48 01 c0 48 29 c2 48 8b 85 38 01 00 00 48 01 d0 48 89 85 88 00 00 00 c7 85 bc 00 00 00 00 00 00 00 e9 90 00 } //01 00 
		$a_01_1 = {50 72 6f 6a 65 63 74 31 2e 64 6c 6c } //01 00  Project1.dll
		$a_01_2 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_01_3 = {5f 5a 31 30 44 65 63 72 79 70 74 58 4f 52 69 50 68 69 53 5f 79 53 5f 79 69 } //01 00  _Z10DecryptXORiPhiS_yS_yi
		$a_01_4 = {5f 5a 31 36 67 65 74 5f 70 72 6f 63 5f 61 64 64 72 65 73 73 69 69 69 69 50 63 50 68 } //01 00  _Z16get_proc_addressiiiiPcPh
		$a_01_5 = {5f 5a 36 41 6e 74 69 41 56 69 69 } //01 00  _Z6AntiAVii
		$a_01_6 = {61 64 72 65 73 73 5f 70 61 79 6c 6f 61 64 } //01 00  adress_payload
		$a_01_7 = {6d 65 6d 5f 73 } //00 00  mem_s
	condition:
		any of ($a_*)
 
}