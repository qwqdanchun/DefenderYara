
rule TrojanSpy_Win32_Banker_AFH{
	meta:
		description = "TrojanSpy:Win32/Banker.AFH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {49 00 6e 00 66 00 33 00 63 00 74 00 90 02 02 20 00 49 00 54 00 90 00 } //01 00 
		$a_00_1 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 42 00 61 00 6e 00 6b 00 } //01 00  C:\windows\Bank
		$a_00_2 = {64 00 65 00 73 00 74 00 69 00 6e 00 61 00 74 00 61 00 72 00 69 00 6f 00 3d 00 65 00 6d 00 70 00 72 00 65 00 73 00 61 00 72 00 69 00 6f 00 31 00 33 00 33 00 40 00 68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  destinatario=empresario133@hotmail.com
		$a_00_3 = {63 00 68 00 61 00 6d 00 70 00 69 00 6f 00 6e 00 6c 00 6f 00 76 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 65 00 6e 00 76 00 69 00 6f 00 2e 00 70 00 68 00 70 00 } //00 00  championlover.com/envio.php
	condition:
		any of ($a_*)
 
}