
rule HackTool_Win32_DarkSide_C_dha{
	meta:
		description = "HackTool:Win32/DarkSide.C!dha,SIGNATURE_TYPE_CMDHSTR_EXT,ffffffe7 03 2c 01 0d 00 00 64 00 "
		
	strings :
		$a_01_0 = {2d 00 74 00 79 00 70 00 65 00 } //5a 00  -type
		$a_01_1 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 } //0a 00  encryptor
		$a_01_2 = {2d 00 72 00 65 00 6c 00 65 00 61 00 73 00 65 00 } //0a 00  -release
		$a_01_3 = {2d 00 64 00 65 00 62 00 75 00 67 00 } //0a 00  -debug
		$a_01_4 = {2d 00 64 00 6c 00 6c 00 } //0a 00  -dll
		$a_01_5 = {2d 00 64 00 6c 00 6c 00 64 00 65 00 62 00 75 00 67 00 } //64 00  -dlldebug
		$a_01_6 = {64 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 } //64 00  decryptor
		$a_01_7 = {64 00 65 00 63 00 72 00 79 00 70 00 74 00 5f 00 6f 00 6e 00 65 00 } //32 00  decrypt_one
		$a_01_8 = {2d 00 63 00 6f 00 6e 00 66 00 69 00 67 00 } //32 00  -config
		$a_01_9 = {2d 00 70 00 75 00 62 00 6b 00 65 00 79 00 } //32 00  -pubkey
		$a_01_10 = {2d 00 70 00 72 00 69 00 76 00 6b 00 65 00 79 00 } //32 00  -privkey
		$a_01_11 = {2d 00 6f 00 66 00 69 00 6c 00 65 00 } //32 00  -ofile
		$a_01_12 = {2d 00 69 00 66 00 69 00 6c 00 65 00 } //00 00  -ifile
	condition:
		any of ($a_*)
 
}