
rule TrojanDropper_Win32_Tiebho_A{
	meta:
		description = "TrojanDropper:Win32/Tiebho.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {67 72 65 61 74 64 65 61 90 02 03 73 63 74 68 2e 63 6f 6d 90 00 } //02 00 
		$a_00_1 = {44 30 33 32 35 37 30 41 2d 35 46 36 33 2d 34 38 31 32 2d 41 30 39 34 2d 38 37 44 30 30 37 43 32 33 30 31 32 } //01 00  D032570A-5F63-4812-A094-87D007C23012
		$a_00_2 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 42 48 4f 69 6e 69 74 } //01 00  SYSTEM\CurrentControlSet\Control\BHOinit
		$a_00_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 00 45 6e 61 62 6c 65 48 74 74 70 31 5f 31 } //00 00 
	condition:
		any of ($a_*)
 
}