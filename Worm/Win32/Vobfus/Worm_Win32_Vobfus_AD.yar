
rule Worm_Win32_Vobfus_AD{
	meta:
		description = "Worm:Win32/Vobfus.AD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {7a 00 00 00 02 00 00 00 20 00 00 00 02 00 00 00 31 00 00 00 02 00 00 00 63 00 00 00 02 00 00 00 6f 00 00 00 02 00 00 00 64 00 00 00 02 00 00 00 65 00 00 00 02 00 00 00 6c 00 00 00 02 00 00 00 69 00 00 00 02 00 00 00 2e 00 00 00 02 00 00 00 62 00 00 00 02 00 00 00 70 00 00 00 02 00 00 00 79 00 00 00 02 00 00 00 72 00 00 00 02 00 00 00 35 00 00 00 02 00 00 00 32 00 00 00 02 00 00 00 33 00 00 00 02 00 00 00 6d 00 00 00 02 00 00 00 4e 00 00 00 02 00 00 00 57 00 00 00 02 00 00 00 } //2
		$a_03_1 = {0d 14 00 0c 00 08 00 ff 0d 58 00 0d 00 3e 44 ff 31 78 ff 1a 00 ff 00 34 6c 78 ff 1b 90 01 02 1b 90 01 02 2a 23 44 ff 1b 90 01 02 2a 23 f8 fe 1b 90 01 02 2a 23 f4 fe 1b 90 01 02 2a 23 f0 fe fb 30 32 90 00 } //1
		$a_03_2 = {04 48 ff 04 44 ff 05 90 01 02 24 90 01 02 0d 14 00 1a 00 08 44 ff 0d 58 00 1b 00 04 90 01 02 10 38 00 14 00 04 90 01 02 f4 01 2b 3e ff 10 64 00 14 00 04 90 01 02 6c 40 ff 1b 90 01 02 2a 23 34 ff 6c 38 ff 2a fd c7 2c ff 6c 48 ff 76 50 00 f5 01 00 00 80 59 30 ff 10 20 00 14 00 32 90 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}