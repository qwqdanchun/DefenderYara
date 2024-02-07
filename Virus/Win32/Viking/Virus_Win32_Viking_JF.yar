
rule Virus_Win32_Viking_JF{
	meta:
		description = "Virus:Win32/Viking.JF,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0d 00 10 00 00 04 00 "
		
	strings :
		$a_00_0 = {7e 2e c7 45 f8 01 00 00 00 8b 45 fc 8b 55 f8 8a 5c 10 ff 80 c3 80 8d 45 f4 8b d3 } //03 00 
		$a_00_1 = {8b 07 83 78 08 01 75 f1 68 c8 00 00 00 } //03 00 
		$a_02_2 = {ff ff 3d 03 01 00 00 0f 90 01 05 3d ea 00 00 00 75 90 00 } //02 00 
		$a_00_3 = {f6 40 1c 01 74 27 68 30 75 00 } //02 00 
		$a_00_4 = {8b 07 83 78 04 00 74 3c 68 d0 07 00 00 } //01 00 
		$a_00_5 = {81 38 6b 42 79 44 74 } //01 00 
		$a_00_6 = {83 f8 01 1b c0 40 88 45 fb 53 } //01 00 
		$a_00_7 = {eb 04 c6 45 fb 00 80 7d fb 00 } //01 00 
		$a_00_8 = {46 69 6e 64 52 65 73 6f 75 72 63 65 41 } //01 00  FindResourceA
		$a_01_9 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_10 = {57 4e 65 74 4f 70 65 6e 45 6e 75 6d 41 } //01 00  WNetOpenEnumA
		$a_00_11 = {57 4e 65 74 45 6e 75 6d 52 65 73 6f 75 72 63 65 41 } //01 00  WNetEnumResourceA
		$a_00_12 = {57 4e 65 74 43 6c 6f 73 65 45 6e 75 6d } //01 00  WNetCloseEnum
		$a_00_13 = {57 4e 65 74 43 61 6e 63 65 6c 43 6f 6e 6e 65 63 74 69 6f 6e 41 } //01 00  WNetCancelConnectionA
		$a_00_14 = {57 4e 65 74 43 61 6e 63 65 6c 43 6f 6e 6e 65 63 74 69 6f 6e 32 41 } //01 00  WNetCancelConnection2A
		$a_01_15 = {57 4e 65 74 41 64 64 43 6f 6e 6e 65 63 74 69 6f 6e 32 41 } //00 00  WNetAddConnection2A
	condition:
		any of ($a_*)
 
}