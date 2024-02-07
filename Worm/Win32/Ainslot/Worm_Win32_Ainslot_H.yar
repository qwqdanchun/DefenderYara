
rule Worm_Win32_Ainslot_H{
	meta:
		description = "Worm:Win32/Ainslot.H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {c7 45 fc 0b 00 00 00 68 90 01 04 68 90 01 04 ff 15 90 01 04 89 45 80 c7 85 90 01 04 08 00 00 00 6a 00 90 00 } //01 00 
		$a_02_1 = {c7 45 fc 15 00 00 00 68 90 01 04 68 90 01 04 ff 15 90 01 04 8b d0 8d 4d a8 ff 15 90 00 } //01 00 
		$a_00_2 = {5c 00 7a 00 61 00 68 00 69 00 72 00 20 00 76 00 62 00 5c 00 4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 20 00 28 00 32 00 29 00 } //01 00  \zahir vb\New Folder (2)
		$a_00_3 = {73 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 66 00 69 00 6c 00 65 00 73 00 79 00 73 00 74 00 65 00 6d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 } //00 00  scripting.filesystemobject
	condition:
		any of ($a_*)
 
}