
rule TrojanDropper_Win32_Srizbi_gen_B{
	meta:
		description = "TrojanDropper:Win32/Srizbi.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_02_0 = {25 64 00 00 69 6e 73 74 61 6c 6c 65 72 20 6f 6b 32 00 00 00 67 75 74 21 90 01 10 6f 6b 00 00 66 61 69 6c 65 64 20 74 6f 20 66 69 6e 64 20 6d 61 72 6b 65 72 00 00 00 65 72 72 6f 72 00 00 00 32 00 00 00 6f 6b 00 00 66 61 69 6c 65 64 20 74 6f 20 66 69 6e 64 20 6d 61 72 6b 65 72 00 00 00 65 72 72 6f 72 00 00 00 61 64 64 72 20 3d 20 25 78 2c 20 66 69 6c 65 73 69 7a 65 20 3d 20 25 64 2c 20 53 54 41 52 54 31 20 3d 20 25 78 2c 20 6d 61 72 6b 65 72 31 5f 73 69 7a 65 20 3d 20 25 64 90 00 } //02 00 
		$a_01_1 = {46 6c 75 73 68 49 6e 73 74 72 75 63 74 69 6f 6e 43 61 63 68 65 } //00 00  FlushInstructionCache
	condition:
		any of ($a_*)
 
}