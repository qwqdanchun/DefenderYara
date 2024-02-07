
rule Ransom_MSIL_FileCryptor_PAD_MTB{
	meta:
		description = "Ransom:MSIL/FileCryptor.PAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 6c 6c 20 79 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 66 69 6c 65 73 } //01 00  all your personal files
		$a_01_1 = {72 61 6e 73 6f 6d 77 61 72 65 } //01 00  ransomware
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_3 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 64 00 69 00 73 00 6b 00 2e 00 73 00 79 00 73 00 } //01 00  C:\Windows\System32\drivers\disk.sys
		$a_01_4 = {49 00 6e 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 20 00 6b 00 65 00 79 00 } //01 00  Incorrect key
		$a_01_5 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 68 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  Processhacker
		$a_01_6 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 } //00 00  shutdown
	condition:
		any of ($a_*)
 
}