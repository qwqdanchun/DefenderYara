
rule Trojan_BAT_Crypt_MB_MTB{
	meta:
		description = "Trojan:BAT/Crypt.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 61 37 34 39 33 33 37 2d 33 33 39 30 2d 34 34 34 30 2d 38 61 38 66 2d 31 37 63 38 38 62 37 36 62 33 62 36 } //01 00  9a749337-3390-4440-8a8f-17c88b76b3b6
		$a_01_1 = {50 32 50 4b 75 74 73 77 65 75 6c 76 62 53 69 48 42 53 } //01 00  P2PKutsweulvbSiHBS
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_3 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_4 = {68 75 64 64 4c 6f 68 42 4b 31 } //01 00  huddLohBK1
		$a_01_5 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 33 31 37 2d 31 } //01 00  $$method0x6000317-1
		$a_01_6 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 33 33 32 2d 31 } //00 00  $$method0x6000332-1
	condition:
		any of ($a_*)
 
}