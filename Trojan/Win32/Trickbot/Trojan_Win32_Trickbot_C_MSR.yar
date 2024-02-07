
rule Trojan_Win32_Trickbot_C_MSR{
	meta:
		description = "Trojan:Win32/Trickbot.C!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {00 73 00 74 00 70 00 00 00 61 00 00 00 6a 00 65 00 74 00 00 00 73 00 69 00 6e 00 67 00 00 00 00 00 68 00 62 00 00 00 00 00 61 00 64 00 64 00 00 00 61 00 6e 00 2e 00 00 00 63 00 61 00 6d 00 65 00 00 00 00 00 6b 00 6a 00 6c 00 64 00 00 00 00 00 66 00 6b 00 64 00 73 00 } //01 00 
		$a_00_1 = {55 00 70 00 64 00 61 00 74 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 6f 00 72 00 64 00 20 00 74 00 6f 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 6f 00 72 00 64 00 20 00 32 00 30 00 31 00 39 00 20 00 74 00 6f 00 20 00 70 00 72 00 65 00 76 00 69 00 65 00 77 00 20 00 74 00 68 00 69 00 73 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 20 00 6f 00 72 00 20 00 74 00 72 00 79 00 20 00 6f 00 6e 00 20 00 61 00 6e 00 6f 00 74 00 68 00 65 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 77 00 69 00 74 00 68 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 6f 00 72 00 64 00 } //01 00  Update your Microsoft Word to Microsoft Word 2019 to preview this document or try on another computer with Microsoft Word
		$a_01_2 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 57 } //00 00  HttpOpenRequestW
	condition:
		any of ($a_*)
 
}