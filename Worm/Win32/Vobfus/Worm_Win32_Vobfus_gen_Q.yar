
rule Worm_Win32_Vobfus_gen_Q{
	meta:
		description = "Worm:Win32/Vobfus.gen!Q,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 c4 1c 8b 45 08 ff 30 e8 90 01 04 89 85 90 01 04 c7 85 90 01 04 03 00 00 00 8d b5 90 01 04 6a 00 ff b5 90 01 04 e8 90 01 04 8b c8 8b d6 e8 90 01 04 8d 85 90 01 04 50 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 50 ff 35 90 01 04 e8 90 01 04 89 85 90 01 03 ff 8d 85 90 01 03 ff 50 6a 00 e8 90 00 } //5
		$a_03_1 = {8b c8 8b d6 e8 90 01 04 8d 85 90 01 04 50 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 50 ff 35 90 01 04 e8 90 01 04 89 85 90 01 04 8d 85 90 01 04 50 6a 00 e8 90 01 04 8b 85 90 01 04 89 45 90 01 01 8d 4d 90 01 01 e8 90 00 } //2
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*2) >=7
 
}