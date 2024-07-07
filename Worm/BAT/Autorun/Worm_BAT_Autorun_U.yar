
rule Worm_BAT_Autorun_U{
	meta:
		description = "Worm:BAT/Autorun.U,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 00 53 00 45 00 52 00 20 00 63 00 72 00 34 00 63 00 6b 00 72 00 30 00 78 00 } //5 USER cr4ckr0x
		$a_01_1 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //5 shellexecute=autorun.exe
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
		$a_01_3 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 46 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 Select * From Win32_Process
		$a_01_4 = {54 00 61 00 72 00 67 00 65 00 74 00 49 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00 20 00 49 00 53 00 41 00 20 00 27 00 57 00 69 00 6e 00 33 00 32 00 5f 00 55 00 53 00 42 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 64 00 65 00 76 00 69 00 63 00 65 00 27 00 } //1 TargetInstance ISA 'Win32_USBControllerdevice'
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=12
 
}