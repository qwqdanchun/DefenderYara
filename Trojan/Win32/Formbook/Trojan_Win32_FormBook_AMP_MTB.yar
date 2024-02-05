
rule Trojan_Win32_FormBook_AMP_MTB{
	meta:
		description = "Trojan:Win32/FormBook.AMP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_80_0 = {6b 65 72 6e 65 6c 33 32 3a 3a 43 72 65 61 74 65 46 69 6c 65 28 74 27 } //kernel32::CreateFile(t'  01 00 
		$a_80_1 = {6b 65 72 6e 65 6c 33 32 3a 3a 56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 28 69 20 72 38 2c 20 69 20 } //kernel32::VirtualProtect(i r8, i   01 00 
		$a_80_2 = {6b 65 72 6e 65 6c 33 32 3a 3a 52 65 61 64 46 69 6c 65 28 69 20 72 31 30 2c 20 69 20 72 38 2c 20 69 20 } //kernel32::ReadFile(i r10, i r8, i   01 00 
		$a_80_3 = {6b 65 72 6e 65 6c 33 32 3a 3a 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 28 29 69 2e 72 35 } //kernel32::GetCurrentProcess()i.r5  01 00 
		$a_80_4 = {51 6b 6b 62 61 6c } //Qkkbal  01 00 
		$a_80_5 = {6c 4f 77 71 6c 4f 77 } //lOwqlOw  01 00 
		$a_80_6 = {2e 44 45 46 41 55 4c 54 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 49 6e 74 65 72 6e 61 74 69 6f 6e 61 6c } //.DEFAULT\Control Panel\International  01 00 
		$a_80_7 = {43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 44 65 73 6b 74 6f 70 5c 52 65 73 6f 75 72 63 65 4c 6f 63 61 6c 65 } //Control Panel\Desktop\ResourceLocale  01 00 
		$a_80_8 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //Software\Microsoft\Windows\CurrentVersion  01 00 
		$a_80_9 = {4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 51 75 69 63 6b 20 4c 61 75 6e 63 68 } //Microsoft\Internet Explorer\Quick Launch  01 00 
		$a_80_10 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //ShellExecuteA  00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FormBook_AMP_MTB_2{
	meta:
		description = "Trojan:Win32/FormBook.AMP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0e 00 00 01 00 "
		
	strings :
		$a_80_0 = {41 6c 6c 6f 63 } //Alloc  01 00 
		$a_80_1 = {6b 65 72 6e 65 6c 33 32 3a 3a 43 72 65 61 74 65 46 69 6c 65 28 74 27 } //kernel32::CreateFile(t'  01 00 
		$a_80_2 = {69 20 30 78 38 30 30 30 30 30 30 30 2c 20 69 20 30 2c 20 70 20 30 2c 20 69 20 33 2c 20 69 20 30 2c 20 69 20 30 29 69 2e 72 31 30 } //i 0x80000000, i 0, p 0, i 3, i 0, i 0)i.r10  01 00 
		$a_03_3 = {6b 00 65 00 72 00 6e 00 65 00 6c 00 33 00 32 00 3a 00 3a 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 28 00 69 00 20 00 72 00 38 00 2c 00 20 00 69 00 20 00 90 02 05 2c 00 20 00 69 00 20 00 30 00 78 00 34 00 30 00 2c 00 20 00 70 00 30 00 29 00 90 00 } //01 00 
		$a_03_4 = {6b 65 72 6e 65 6c 33 32 3a 3a 56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 28 69 20 72 38 2c 20 69 20 90 02 05 2c 20 69 20 30 78 34 30 2c 20 70 30 29 90 00 } //01 00 
		$a_03_5 = {6b 00 65 00 72 00 6e 00 65 00 6c 00 33 00 32 00 3a 00 3a 00 52 00 65 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 69 00 20 00 72 00 31 00 30 00 2c 00 20 00 69 00 20 00 72 00 38 00 2c 00 20 00 69 00 20 00 90 02 05 2c 00 20 00 74 00 2e 00 2c 00 20 00 69 00 20 00 30 00 29 00 90 00 } //01 00 
		$a_03_6 = {6b 65 72 6e 65 6c 33 32 3a 3a 52 65 61 64 46 69 6c 65 28 69 20 72 31 30 2c 20 69 20 72 38 2c 20 69 20 90 02 05 2c 20 74 2e 2c 20 69 20 30 29 90 00 } //01 00 
		$a_80_7 = {6b 65 72 6e 65 6c 33 32 3a 3a 45 6e 75 6d 44 61 74 65 46 6f 72 6d 61 74 73 41 28 69 20 72 38 2c 20 69 20 30 2c 20 69 30 29 2e 69 20 72 35 } //kernel32::EnumDateFormatsA(i r8, i 0, i0).i r5  01 00 
		$a_80_8 = {2e 44 45 46 41 55 4c 54 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 49 6e 74 65 72 6e 61 74 69 6f 6e 61 6c } //.DEFAULT\Control Panel\International  01 00 
		$a_80_9 = {43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 44 65 73 6b 74 6f 70 5c 52 65 73 6f 75 72 63 65 4c 6f 63 61 6c 65 } //Control Panel\Desktop\ResourceLocale  01 00 
		$a_80_10 = {5b 52 65 6e 61 6d 65 5d } //[Rename]  01 00 
		$a_80_11 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //Software\Microsoft\Windows\CurrentVersion  01 00 
		$a_80_12 = {4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 51 75 69 63 6b 20 4c 61 75 6e 63 68 } //Microsoft\Internet Explorer\Quick Launch  01 00 
		$a_80_13 = {51 6b 6b 62 61 6c } //Qkkbal  00 00 
	condition:
		any of ($a_*)
 
}