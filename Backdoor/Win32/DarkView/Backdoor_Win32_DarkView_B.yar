
rule Backdoor_Win32_DarkView_B{
	meta:
		description = "Backdoor:Win32/DarkView.B,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {49 6e 6a 65 63 74 65 64 20 74 6f 3a 20 } //04 00  Injected to: 
		$a_01_1 = {5c 78 63 6f 6e 66 69 67 2e 73 72 76 } //03 00  \xconfig.srv
		$a_01_2 = {5b 53 68 65 6c 6c 20 61 6c 72 65 61 64 79 20 63 6c 6f 73 65 64 5d } //00 00  [Shell already closed]
	condition:
		any of ($a_*)
 
}