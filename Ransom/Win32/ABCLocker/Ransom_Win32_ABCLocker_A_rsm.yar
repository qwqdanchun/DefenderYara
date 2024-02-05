
rule Ransom_Win32_ABCLocker_A_rsm{
	meta:
		description = "Ransom:Win32/ABCLocker.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,fffffff4 01 fffffff4 01 05 00 00 64 00 "
		
	strings :
		$a_01_0 = {5c 63 6c 6f 75 64 73 77 6f 72 64 2e 70 64 62 } //64 00 
		$a_01_1 = {41 00 42 00 20 00 48 00 4f 00 4e 00 45 00 53 00 54 00 4f 00 20 00 56 00 49 00 52 00 55 00 4d 00 20 00 42 00 4f 00 4e 00 55 00 4d 00 20 00 4e 00 49 00 48 00 49 00 4c 00 20 00 44 00 45 00 54 00 45 00 52 00 52 00 45 00 54 00 } //64 00 
		$a_01_2 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 41 00 42 00 43 00 20 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 } //64 00 
		$a_01_3 = {59 00 4f 00 55 00 52 00 20 00 50 00 41 00 53 00 53 00 57 00 4f 00 52 00 44 00 } //64 00 
		$a_01_4 = {41 00 46 00 46 00 49 00 4c 00 49 00 41 00 54 00 45 00 20 00 49 00 44 00 } //00 00 
	condition:
		any of ($a_*)
 
}