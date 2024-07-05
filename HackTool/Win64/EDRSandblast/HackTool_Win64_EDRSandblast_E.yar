
rule HackTool_Win64_EDRSandblast_E{
	meta:
		description = "HackTool:Win64/EDRSandblast.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 2b 00 5d 00 20 00 5b 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 5d 00 20 00 46 00 6f 00 75 00 6e 00 64 00 20 00 74 00 68 00 65 00 20 00 68 00 61 00 6e 00 64 00 6c 00 65 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 28 00 50 00 49 00 44 00 3a 00 20 00 25 00 68 00 75 00 29 00 3a 00 20 00 30 00 78 00 25 00 68 00 78 00 20 00 61 00 74 00 20 00 30 00 78 00 25 00 49 00 36 00 34 00 78 00 } //01 00  [+] [ProcessProtection] Found the handle of the current process (PID: %hu): 0x%hx at 0x%I64x
		$a_01_1 = {5b 00 2b 00 5d 00 20 00 56 00 75 00 6c 00 6e 00 65 00 72 00 61 00 62 00 6c 00 65 00 20 00 64 00 72 00 69 00 76 00 65 00 72 00 20 00 69 00 73 00 20 00 61 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 72 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 21 00 } //01 00  [+] Vulnerable driver is already running!
		$a_01_2 = {5b 00 21 00 5d 00 20 00 43 00 6f 00 75 00 6c 00 64 00 6e 00 27 00 74 00 20 00 61 00 6c 00 6c 00 6f 00 63 00 61 00 74 00 65 00 20 00 6d 00 65 00 6d 00 6f 00 72 00 79 00 20 00 74 00 6f 00 20 00 65 00 6e 00 75 00 6d 00 65 00 72 00 61 00 74 00 65 00 20 00 74 00 68 00 65 00 20 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 20 00 69 00 6e 00 20 00 4b 00 65 00 72 00 6e 00 65 00 6c 00 20 00 63 00 61 00 6c 00 6c 00 62 00 61 00 63 00 6b 00 73 00 } //00 00  [!] Couldn't allocate memory to enumerate the drivers in Kernel callbacks
	condition:
		any of ($a_*)
 
}