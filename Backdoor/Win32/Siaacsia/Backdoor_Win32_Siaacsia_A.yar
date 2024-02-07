
rule Backdoor_Win32_Siaacsia_A{
	meta:
		description = "Backdoor:Win32/Siaacsia.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 65 72 76 69 63 65 20 73 74 61 72 74 3a 20 52 75 6e 43 6f 75 6e 74 3d 00 } //01 00 
		$a_00_1 = {53 65 72 76 69 63 65 20 73 74 6f 70 3a 20 52 75 6e 43 6f 75 6e 74 3d 00 } //01 00 
		$a_00_2 = {59 3a 5c 50 52 4f 47 52 41 4d 53 5c 30 30 30 5f 43 55 52 52 45 4e 54 5f 57 4f 52 4b 5c 52 50 43 5f 52 44 41 5c 52 44 50 5c 52 44 50 5f 30 39 5c 4d 4f 44 55 4c 45 53 5c 52 44 50 4d 6f 64 75 6c 65 2e 70 61 73 } //01 00  Y:\PROGRAMS\000_CURRENT_WORK\RPC_RDA\RDP\RDP_09\MODULES\RDPModule.pas
		$a_00_3 = {3a 20 50 72 6f 63 65 73 73 48 61 6e 64 6c 65 3d 00 } //01 00 
		$a_03_4 = {63 68 72 6f 6d 61 74 69 6e 67 90 02 0f 47 6f 6f 67 6c 65 20 52 65 6d 6f 74 65 20 44 65 73 6b 74 6f 70 20 53 65 72 76 69 63 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}