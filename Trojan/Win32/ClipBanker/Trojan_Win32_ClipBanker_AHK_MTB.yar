
rule Trojan_Win32_ClipBanker_AHK_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.AHK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 65 6d 6f 76 65 43 6c 69 70 62 6f 61 72 64 46 6f 72 6d 61 74 4c 69 73 74 65 6e 65 72 } //01 00  RemoveClipboardFormatListener
		$a_01_1 = {41 64 64 43 6c 69 70 62 6f 61 72 64 46 6f 72 6d 61 74 4c 69 73 74 65 6e 65 72 } //01 00  AddClipboardFormatListener
		$a_01_2 = {4c 6f 61 64 52 65 73 6f 75 72 63 65 } //01 00  LoadResource
		$a_01_3 = {6f 00 62 00 6a 00 4f 00 53 00 49 00 74 00 65 00 6d 00 2e 00 53 00 65 00 72 00 69 00 61 00 6c 00 4e 00 75 00 6d 00 62 00 65 00 72 00 } //01 00  objOSItem.SerialNumber
		$a_01_4 = {6f 00 62 00 6a 00 4f 00 53 00 49 00 74 00 65 00 6d 00 2e 00 4d 00 61 00 6e 00 75 00 66 00 61 00 63 00 74 00 75 00 72 00 65 00 72 00 } //01 00  objOSItem.Manufacturer
		$a_81_5 = {47 65 74 4b 65 79 53 74 61 74 65 28 29 } //01 00  GetKeyState()
		$a_01_6 = {4f 70 65 6e 43 6c 69 70 62 6f 61 72 64 } //01 00  OpenClipboard
		$a_01_7 = {43 6c 6f 73 65 43 6c 69 70 62 6f 61 72 64 } //01 00  CloseClipboard
		$a_01_8 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //01 00  GetClipboardData
		$a_01_9 = {45 6d 70 74 79 43 6c 69 70 62 6f 61 72 64 } //01 00  EmptyClipboard
		$a_01_10 = {53 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //01 00  SetClipboardData
		$a_81_11 = {3e 41 55 54 4f 48 4f 54 4b 45 59 20 53 43 52 49 50 54 3c } //01 00  >AUTOHOTKEY SCRIPT<
		$a_81_12 = {4b 65 79 62 64 20 68 6f 6f 6b 3a 20 25 73 } //01 00  Keybd hook: %s
		$a_01_13 = {73 00 74 00 72 00 43 00 53 00 49 00 74 00 65 00 6d 00 2e 00 4d 00 61 00 6e 00 75 00 66 00 61 00 63 00 74 00 75 00 72 00 65 00 72 00 } //01 00  strCSItem.Manufacturer
		$a_01_14 = {73 00 74 00 72 00 43 00 53 00 49 00 74 00 65 00 6d 00 2e 00 4e 00 75 00 6d 00 62 00 65 00 72 00 4f 00 66 00 4c 00 6f 00 67 00 69 00 63 00 61 00 6c 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 73 00 } //01 00  strCSItem.NumberOfLogicalProcessors
		$a_01_15 = {73 00 74 00 72 00 43 00 53 00 49 00 74 00 65 00 6d 00 2e 00 53 00 65 00 72 00 69 00 61 00 6c 00 4e 00 75 00 6d 00 62 00 65 00 72 00 } //01 00  strCSItem.SerialNumber
		$a_01_16 = {73 00 74 00 72 00 43 00 53 00 49 00 74 00 65 00 6d 00 2e 00 44 00 6f 00 6d 00 61 00 69 00 6e 00 } //00 00  strCSItem.Domain
	condition:
		any of ($a_*)
 
}