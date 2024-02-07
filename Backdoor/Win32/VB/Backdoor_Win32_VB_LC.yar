
rule Backdoor_Win32_VB_LC{
	meta:
		description = "Backdoor:Win32/VB.LC,SIGNATURE_TYPE_PEHSTR,09 00 09 00 03 00 00 03 00 "
		
	strings :
		$a_01_0 = {47 00 45 00 54 00 20 00 2f 00 64 00 65 00 76 00 2f 00 7a 00 65 00 72 00 6f 00 20 00 48 00 54 00 54 00 50 00 2f 00 31 00 2e 00 30 00 } //03 00  GET /dev/zero HTTP/1.0
		$a_01_1 = {43 00 6f 00 70 00 79 00 69 00 6e 00 67 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 72 00 74 00 69 00 6f 00 6e 00 } //03 00  Copying computer informartion
		$a_01_2 = {54 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 72 00 69 00 6e 00 67 00 20 00 56 00 69 00 72 00 75 00 73 00 20 00 65 00 78 00 61 00 6d 00 70 00 6c 00 65 00 73 00 20 00 66 00 6f 00 72 00 20 00 61 00 6e 00 61 00 6c 00 79 00 73 00 65 00 } //00 00  Transferring Virus examples for analyse
	condition:
		any of ($a_*)
 
}