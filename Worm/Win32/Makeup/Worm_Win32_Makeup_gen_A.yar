
rule Worm_Win32_Makeup_gen_A{
	meta:
		description = "Worm:Win32/Makeup.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {5f 4f 73 63 61 72 5f 53 74 61 74 75 73 4e 6f 74 69 66 79 } //01 00  _Oscar_StatusNotify
		$a_00_1 = {5f 5f 6f 78 46 72 61 6d 65 2e 63 6c 61 73 73 5f 5f } //01 00  __oxFrame.class__
		$a_00_2 = {67 64 6b 57 69 6e 64 6f 77 54 6f 70 6c 65 76 65 6c } //01 00  gdkWindowToplevel
		$a_00_3 = {54 73 6b 4d 75 6c 74 69 43 68 61 74 46 6f 72 6d 2e 55 6e 69 63 6f 64 65 43 6c 61 73 73 } //01 00  TskMultiChatForm.UnicodeClass
		$a_00_4 = {49 4d 57 69 6e 64 6f 77 43 6c 61 73 73 } //05 00  IMWindowClass
		$a_03_5 = {6a 00 6a 00 6a 00 6a 11 ff 15 90 01 04 6a 00 6a 00 6a 00 6a 61 ff 15 90 01 04 50 ff 15 90 01 04 6a 00 6a 00 6a 00 6a 2e ff 15 90 00 } //0a 00 
		$a_03_6 = {6a 00 6a 02 6a 00 0f b7 85 90 01 02 ff ff 8a 84 05 90 01 02 ff ff 50 ff 15 90 01 04 50 ff 15 90 01 04 6a 64 ff 15 90 01 04 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}