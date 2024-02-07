
rule HackTool_BAT_Spoolple{
	meta:
		description = "HackTool:BAT/Spoolple,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 2b 00 5d 00 20 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 65 00 64 00 20 00 44 00 4c 00 4c 00 20 00 74 00 6f 00 20 00 73 00 68 00 65 00 6c 00 6c 00 63 00 6f 00 64 00 65 00 } //01 00  [+] Converted DLL to shellcode
		$a_01_1 = {5b 00 2b 00 5d 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6e 00 67 00 20 00 52 00 44 00 49 00 } //01 00  [+] Executing RDI
		$a_01_2 = {53 00 70 00 6f 00 6f 00 6c 00 53 00 61 00 6d 00 70 00 6c 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  SpoolSample.exe
		$a_01_3 = {54 00 41 00 52 00 47 00 45 00 54 00 20 00 43 00 41 00 50 00 54 00 55 00 52 00 45 00 53 00 45 00 52 00 56 00 45 00 52 00 } //01 00  TARGET CAPTURESERVER
		$a_01_4 = {46 00 69 00 6c 00 65 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 61 00 20 00 44 00 4c 00 4c 00 2c 00 20 00 45 00 78 00 69 00 74 00 69 00 6e 00 67 00 2e 00 } //00 00  File is not a DLL, Exiting.
	condition:
		any of ($a_*)
 
}