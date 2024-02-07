
rule Trojan_Win32_DiskWriter_BA_MTB{
	meta:
		description = "Trojan:Win32/DiskWriter.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {59 6f 75 20 61 72 65 20 66 75 63 6b 65 64 20 62 79 20 61 2e 65 78 65 21 } //02 00  You are fucked by a.exe!
		$a_01_1 = {49 27 6d 20 6e 6f 74 20 72 65 73 70 6f 6e 73 69 62 6c 65 20 66 6f 72 20 61 6e 79 20 64 61 6d 61 67 65 21 } //02 00  I'm not responsible for any damage!
		$a_01_2 = {74 68 69 73 20 69 73 20 6d 61 6c 77 61 72 65 } //01 00  this is malware
		$a_01_3 = {61 00 61 00 61 00 61 00 61 00 61 00 61 00 61 00 61 00 61 00 64 00 73 00 64 00 6c 00 64 00 6b 00 66 00 6f 00 2a 00 26 00 } //01 00  aaaaaaaaaadsdldkfo*&
		$a_01_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_5 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //00 00  VirtualAlloc
	condition:
		any of ($a_*)
 
}