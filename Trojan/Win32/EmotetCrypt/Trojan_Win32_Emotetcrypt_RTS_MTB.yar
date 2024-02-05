
rule Trojan_Win32_Emotetcrypt_RTS_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.RTS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {6b 61 6f 64 33 72 33 79 30 38 63 62 30 71 78 39 6c 6c 6f 68 61 38 68 34 36 61 } //01 00 
		$a_81_1 = {64 38 68 69 61 31 77 79 73 37 6c 70 70 61 33 73 35 30 6c 6f 6a 74 } //01 00 
		$a_81_2 = {73 6b 69 39 78 6f 61 6c 65 34 65 64 70 63 33 61 36 64 78 } //01 00 
		$a_81_3 = {65 79 37 39 6e 34 79 39 77 67 30 61 77 6f 77 6a 64 61 30 30 77 71 72 6d 68 36 70 74 39 67 38 } //00 00 
	condition:
		any of ($a_*)
 
}