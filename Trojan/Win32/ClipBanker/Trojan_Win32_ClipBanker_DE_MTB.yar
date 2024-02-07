
rule Trojan_Win32_ClipBanker_DE_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {52 65 6d 6f 76 65 43 6c 69 70 62 6f 61 72 64 46 6f 72 6d 61 74 4c 69 73 74 65 6e 65 72 } //01 00  RemoveClipboardFormatListener
		$a_81_1 = {62 69 74 63 6f 69 6e 63 61 73 68 3a } //01 00  bitcoincash:
		$a_81_2 = {47 65 74 43 6c 69 70 62 6f 61 72 64 4f 77 6e 65 72 } //01 00  GetClipboardOwner
		$a_81_3 = {43 68 61 6e 67 65 43 6c 69 70 62 6f 61 72 64 43 68 61 69 6e } //01 00  ChangeClipboardChain
		$a_81_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_5 = {50 6f 73 74 4d 65 73 73 61 67 65 57 } //01 00  PostMessageW
		$a_81_6 = {21 21 6d 70 21 21 6d 70 21 21 6d 70 21 21 6d 70 } //00 00  !!mp!!mp!!mp!!mp
	condition:
		any of ($a_*)
 
}