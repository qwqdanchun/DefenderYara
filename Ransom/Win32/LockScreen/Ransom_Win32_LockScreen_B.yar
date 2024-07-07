
rule Ransom_Win32_LockScreen_B{
	meta:
		description = "Ransom:Win32/LockScreen.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3a 00 20 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 74 00 65 00 68 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 : moduletehsupport@gmail.com
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //1 DisableTaskMgr
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 70 00 6f 00 72 00 6e 00 68 00 75 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 } //1 http://www.pornhub.com/
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 00 00 55 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}