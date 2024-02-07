
rule Trojan_Win32_Adylkuzz_E{
	meta:
		description = "Trojan:Win32/Adylkuzz.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 65 73 74 30 31 30 31 31 2e 63 6f 6d 2f 38 36 2e 65 78 65 } //01 00  best01011.com/86.exe
		$a_01_1 = {73 65 63 75 72 69 74 79 5c 57 49 4e 53 65 63 2e 65 78 65 } //01 00  security\WINSec.exe
		$a_03_2 = {4d 69 6e 65 72 90 01 01 65 78 65 6e 61 6d 65 90 02 08 57 49 4e 53 65 63 2e 65 78 65 90 00 } //01 00 
		$a_03_3 = {4d 69 6e 65 72 90 01 01 65 78 65 6e 61 6d 65 90 02 08 43 68 72 6f 6d 65 2e 74 78 74 90 00 } //01 00 
		$a_03_4 = {73 65 63 73 63 61 6e 2e 65 78 65 90 02 04 53 65 72 76 65 72 90 00 } //01 00 
		$a_03_5 = {57 49 4e 53 53 90 02 04 64 69 73 70 6c 61 79 90 02 04 57 69 6e 64 6f 77 73 20 53 65 63 75 72 69 74 79 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}