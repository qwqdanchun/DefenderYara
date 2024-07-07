
rule Trojan_Win64_Polazert_GC_MTB{
	meta:
		description = "Trojan:Win64/Polazert.GC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 06 2e 00 90 02 06 2e 00 90 02 06 2e 00 90 00 } //10
		$a_80_1 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //CreateEncryptor  1
		$a_01_2 = {5c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 5c 00 52 00 4f 00 41 00 4d 00 49 00 4e 00 47 00 } //1 \APPDATA\ROAMING
		$a_00_3 = {22 00 3a 00 22 00 63 00 68 00 61 00 6e 00 67 00 65 00 5f 00 73 00 74 00 61 00 74 00 75 00 73 00 22 00 2c 00 22 00 } //1 ":"change_status","
		$a_00_4 = {22 00 2c 00 22 00 69 00 73 00 5f 00 73 00 75 00 63 00 63 00 65 00 73 00 73 00 22 00 3a 00 } //1 ","is_success":
		$a_00_5 = {41 00 64 00 6d 00 69 00 6e 00 } //1 Admin
		$a_00_6 = {75 00 6e 00 69 00 71 00 5f 00 68 00 61 00 73 00 68 00 } //1 uniq_hash
		$a_00_7 = {75 00 73 00 65 00 72 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 } //1 userprofile
		$a_00_8 = {3c 00 52 00 53 00 41 00 4b 00 65 00 79 00 56 00 61 00 6c 00 75 00 65 00 3e 00 3c 00 4d 00 6f 00 64 00 75 00 6c 00 75 00 73 00 3e 00 } //1 <RSAKeyValue><Modulus>
		$a_00_9 = {56 00 69 00 73 00 74 00 61 00 } //1 Vista
	condition:
		((#a_02_0  & 1)*10+(#a_80_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=18
 
}