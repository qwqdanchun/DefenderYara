
rule Worm_Win32_SillyShareCopy_N{
	meta:
		description = "Worm:Win32/SillyShareCopy.N,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 73 00 68 00 61 00 72 00 65 00 64 00 61 00 63 00 63 00 65 00 73 00 73 00 } //1 cmd.exe /c net stop sharedaccess
		$a_01_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 72 00 6f 00 75 00 74 00 65 00 20 00 70 00 72 00 69 00 6e 00 74 00 7c 00 66 00 69 00 6e 00 64 00 20 00 22 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //1 cmd /c route print|find "Default
		$a_01_2 = {4e 00 54 00 24 00 22 00 3e 00 3e 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 31 00 2e 00 69 00 6e 00 66 00 26 00 } //1 NT$">>%windir%\1.inf&
		$a_01_3 = {6d 00 63 00 74 00 73 00 6b 00 73 00 68 00 64 00 2e 00 65 00 78 00 65 00 } //1 mctskshd.exe
		$a_01_4 = {6d 00 63 00 75 00 70 00 64 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 mcupdmgr.exe
		$a_01_5 = {72 00 74 00 76 00 73 00 63 00 61 00 6e 00 2e 00 65 00 78 00 65 00 } //1 rtvscan.exe
		$a_01_6 = {41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 Autorun.inf
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}