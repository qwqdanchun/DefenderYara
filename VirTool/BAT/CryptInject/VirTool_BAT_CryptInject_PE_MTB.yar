
rule VirTool_BAT_CryptInject_PE_MTB{
	meta:
		description = "VirTool:BAT/CryptInject.PE!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 6f 4c 6f 76 65 2e 65 78 65 } //01 00  NoLove.exe
		$a_01_1 = {4e 00 6f 00 2d 00 4c 00 6f 00 76 00 65 00 } //01 00  No-Love
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 2d 00 6e 00 20 00 32 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 22 00 } //01 00  cmd.exe /c ping 0 -n 2 & del ""
		$a_01_3 = {4e 00 6f 00 4c 00 6f 00 76 00 65 00 } //01 00  NoLove
		$a_01_4 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //01 00  127.0.0.1
		$a_01_5 = {53 00 79 00 73 00 74 00 65 00 6d 00 44 00 72 00 69 00 76 00 65 00 } //01 00  SystemDrive
		$a_01_6 = {45 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 20 00 41 00 73 00 } //00 00  Executed As
	condition:
		any of ($a_*)
 
}