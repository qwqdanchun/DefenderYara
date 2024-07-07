
rule Trojan_Win32_Filisto_I_dha{
	meta:
		description = "Trojan:Win32/Filisto.I!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_41_0 = {81 c9 00 ff ff ff 41 0f b6 c1 8b 4d fc 89 45 08 8a 04 30 88 01 8b 45 08 88 1c 30 8d 42 01 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 01 } //1
		$a_0f_1 = {b6 c3 89 45 08 8a 04 30 88 04 31 8b 45 08 88 14 30 0f b6 0c 31 0f b6 c2 03 c8 81 e1 ff 00 00 80 79 08 49 81 c9 00 ff ff ff 41 01 00 22 43 89 47 14 c7 47 20 90 01 04 c7 47 24 90 01 04 c7 47 28 90 } //11008
		$a_47_2 = {90 01 04 90 02 07 8b 45 90 00 00 00 5d 04 00 00 ad 89 06 80 5c 27 00 00 ae 89 06 80 00 00 01 00 27 00 11 00 c8 21 50 61 76 69 63 61 2e 50 41 45 43 21 4d 54 42 00 00 01 40 05 82 5f 00 04 00 78 bc 00 00 06 00 06 00 06 00 00 01 00 1a 01 2f 63 20 72 65 6e 20 22 25 73 2a 2e 2a 22 20 2a 2e 2a 2e 25 6c 75 2e 62 61 6b 01 00 25 01 70 69 6e 67 20 31 2e 31 2e 31 2e 31 20 2d 6e 20 25 75 20 26 20 72 6d 64 69 72 20 22 25 73 22 20 2f 71 20 2f 73 01 00 07 01 63 6d 64 2e 65 78 65 01 00 13 01 53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 01 00 12 01 5c 00 5c 00 2e 00 5c 00 50 00 49 00 50 00 45 00 } //1025
	condition:
		((#a_41_0  & 1)*1+(#a_0f_1  & 1)*11008+(#a_47_2  & 1)*1025) >=2
 
}