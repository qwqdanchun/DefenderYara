
rule PWS_Win32_OnLineGames_CT{
	meta:
		description = "PWS:Win32/OnLineGames.CT,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 c4 0c 8b 35 90 01 02 00 10 57 ff 35 90 01 02 00 10 68 90 01 02 00 10 6a 04 ff d6 57 a3 90 01 02 00 10 ff 35 90 01 02 00 10 68 90 01 02 00 10 6a 02 ff d6 57 a3 90 01 02 00 10 ff 35 90 01 02 00 10 68 56 1c 00 10 6a 07 ff d6 a3 90 01 02 00 10 be 90 01 02 00 10 8d 45 90 01 01 56 50 e8 90 01 02 00 00 90 00 } //1
		$a_03_1 = {68 f4 01 00 00 ff 15 90 01 02 00 10 bf 00 00 30 00 53 57 be 00 10 40 00 68 90 01 02 00 10 56 e8 90 01 01 ff ff ff 83 c4 10 83 f8 ff 0f 90 01 03 00 00 03 c6 53 89 45 90 01 01 57 83 c0 05 68 90 01 02 00 10 56 a3 90 01 02 00 10 e8 90 01 01 ff ff ff 83 c4 10 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}