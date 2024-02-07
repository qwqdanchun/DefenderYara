
rule Trojan_BAT_AsyncRAT_EB_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {01 57 d4 02 fc c9 0e 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 34 00 00 00 17 00 00 00 58 00 00 00 a9 00 00 00 50 00 00 00 11 00 00 00 02 00 00 00 03 00 00 00 17 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00  VirtualProtect
		$a_01_2 = {33 38 36 64 30 35 64 62 2d 36 62 30 63 2d 34 34 39 39 2d 38 35 31 35 2d 32 66 62 35 33 62 35 38 65 35 30 37 } //01 00  386d05db-6b0c-4499-8515-2fb53b58e507
		$a_01_3 = {43 6f 6e 66 75 73 65 72 45 78 20 76 31 2e 30 2e 30 } //01 00  ConfuserEx v1.0.0
		$a_01_4 = {43 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  Client.exe
	condition:
		any of ($a_*)
 
}