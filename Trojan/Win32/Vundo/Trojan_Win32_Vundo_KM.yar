
rule Trojan_Win32_Vundo_KM{
	meta:
		description = "Trojan:Win32/Vundo.KM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {36 61 02 00 00 00 00 00 b9 00 45 78 69 74 50 72 6f 63 65 73 73 00 53 00 43 72 65 61 74 65 46 69 6c 65 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5d 01 47 65 74 53 79 73 74 65 6d 4d 65 74 72 69 63 73 00 00 99 02 53 79 73 74 65 6d 50 61 72 61 6d 65 74 65 72 73 49 6e 66 6f 41 00 00 00 00 00 00 00 00 00 00 00 00 00 0c 00 41 72 63 54 6f 00 0b 00 41 72 63 00 00 00 00 00 00 00 00 00 00 00 12 00 50 72 69 6e 74 44 6c 67 45 78 57 00 00 00 00 00 00 } //1
		$a_01_1 = {db 3c 87 0c 3e 99 24 5e 0d 1c 06 b7 47 de b3 12 4d c8 43 bb 8b a6 1f 03 5a 7d 09 38 25 1f 5d d4 cb fc 96 f5 45 3b 13 0d 89 0a 1c db ae 32 20 9a } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}