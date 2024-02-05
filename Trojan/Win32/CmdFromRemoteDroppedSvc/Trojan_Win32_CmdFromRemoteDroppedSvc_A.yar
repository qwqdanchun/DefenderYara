
rule Trojan_Win32_CmdFromRemoteDroppedSvc_A{
	meta:
		description = "Trojan:Win32/CmdFromRemoteDroppedSvc.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 0d 00 00 01 00 "
		
	strings :
		$a_02_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 90 02 50 63 00 6f 00 70 00 79 00 20 00 90 02 10 5c 00 5c 00 90 00 } //f6 ff 
		$a_00_1 = {73 00 79 00 73 00 76 00 6f 00 6c 00 } //f6 ff 
		$a_00_2 = {5c 00 41 00 6c 00 74 00 65 00 61 00 } //f6 ff 
		$a_00_3 = {5c 00 74 00 64 00 73 00 62 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 } //f6 ff 
		$a_00_4 = {5c 00 42 00 6f 00 61 00 72 00 64 00 4d 00 61 00 6b 00 65 00 72 00 20 00 53 00 74 00 75 00 64 00 69 00 6f 00 } //f6 ff 
		$a_00_5 = {77 00 65 00 62 00 65 00 78 00 74 00 72 00 61 00 63 00 74 00 } //f6 ff 
		$a_00_6 = {6a 00 62 00 61 00 63 00 6f 00 6e 00 73 00 75 00 6c 00 74 00 69 00 6e 00 67 00 } //f6 ff 
		$a_00_7 = {73 00 79 00 6e 00 67 00 65 00 6e 00 74 00 61 00 61 00 7a 00 75 00 72 00 65 00 } //f6 ff 
		$a_00_8 = {64 00 65 00 70 00 6c 00 6f 00 79 00 6d 00 65 00 6e 00 74 00 } //f6 ff 
		$a_00_9 = {62 00 61 00 6c 00 67 00 72 00 6f 00 75 00 70 00 69 00 74 00 2e 00 63 00 6f 00 6d 00 } //f6 ff 
		$a_00_10 = {5e 00 26 00 20 00 49 00 46 00 20 00 25 00 45 00 52 00 52 00 4f 00 52 00 4c 00 45 00 56 00 45 00 4c 00 25 00 20 00 4c 00 45 00 51 00 20 00 31 00 20 00 65 00 78 00 69 00 74 00 20 00 30 00 } //f6 ff 
		$a_02_11 = {72 00 6f 00 62 00 6f 00 63 00 6f 00 70 00 79 00 90 02 f0 6d 00 69 00 72 00 90 00 } //f6 ff 
		$a_02_12 = {78 00 63 00 6f 00 70 00 79 00 90 02 f0 2f 00 65 00 2f 00 66 00 2f 00 64 00 2f 00 69 00 2f 00 73 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}