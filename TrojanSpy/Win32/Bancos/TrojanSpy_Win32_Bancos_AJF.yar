
rule TrojanSpy_Win32_Bancos_AJF{
	meta:
		description = "TrojanSpy:Win32/Bancos.AJF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {46 54 50 20 2d 20 6d 61 6b 69 74 6f 20 00 00 00 ff ff ff ff 09 00 00 00 6d 65 6e 73 61 67 65 6d } //01 00 
		$a_02_1 = {16 00 00 00 43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 90 01 03 2e 74 78 74 00 00 ff ff ff ff 0f 00 00 00 43 3a 5c 50 72 6f 67 72 61 6d 44 61 90 00 } //01 00 
		$a_02_2 = {3a 70 74 74 68 00 00 90 02 03 ff ff ff ff 0a 00 00 00 63 68 72 6f 6d 65 2e 65 78 65 00 00 ff ff ff ff 0b 00 00 00 66 69 72 65 66 6f 78 2e 65 78 65 00 ff ff ff ff 0c 00 00 00 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 90 00 } //01 00 
		$a_00_3 = {07 00 00 00 4d 41 58 2d 41 47 45 00 ff ff ff ff 07 00 00 00 56 45 52 53 49 4f 4e 00 ff ff ff ff 07 00 00 00 43 4f 4d 4d 45 4e 54 00 80 cb a4 4c } //01 00 
		$a_00_4 = {5c 46 69 6c 65 5a 69 6c 6c 61 5c 72 65 63 65 6e 74 73 65 72 76 65 72 73 2e 78 6d 6c 00 00 00 00 ff ff ff ff 06 00 00 00 3c 48 6f 73 74 3e 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}