
rule TrojanProxy_Win32_Wonknod_D{
	meta:
		description = "TrojanProxy:Win32/Wonknod.D,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_00_0 = {5c 73 76 63 76 6d 78 } //1 \svcvmx
		$a_00_1 = {53 56 43 56 4d 58 7b 37 32 43 45 38 44 42 30 2d 36 45 42 36 2d 34 43 32 34 2d 39 32 45 38 2d 41 30 37 42 37 37 41 32 32 39 46 38 7d } //1 SVCVMX{72CE8DB0-6EB6-4C24-92E8-A07B77A229F8}
		$a_03_2 = {61 00 69 00 c7 90 01 02 6e 00 7b 00 c7 90 01 02 30 00 37 00 c7 90 01 02 36 00 37 00 90 00 } //10
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*10) >=12
 
}
rule TrojanProxy_Win32_Wonknod_D_2{
	meta:
		description = "TrojanProxy:Win32/Wonknod.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 6a 65 63 74 5c 42 79 70 61 73 73 55 61 63 5c } //1 Project\BypassUac\
		$a_01_1 = {69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 66 00 61 00 69 00 6c 00 65 00 20 00 3a 00 20 00 25 00 64 00 21 00 20 00 0a 00 00 00 } //1
		$a_01_2 = {53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 72 00 75 00 6e 00 20 00 77 00 2f 00 65 00 72 00 72 00 20 00 30 00 78 00 25 00 30 00 38 00 6c 00 78 00 } //1 Service failed to run w/err 0x%08lx
		$a_01_3 = {2f 72 65 70 30 30 31 2e 6c 70 3f } //1 /rep001.lp?
		$a_01_4 = {65 78 65 63 75 74 65 3d 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanProxy_Win32_Wonknod_D_3{
	meta:
		description = "TrojanProxy:Win32/Wonknod.D,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_03_0 = {69 00 6e 00 c7 90 01 03 73 00 74 00 c7 90 01 03 61 00 6c 00 c7 90 01 03 6c 00 00 00 90 00 } //10
		$a_00_1 = {77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 6d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 windowsmanagementservice
		$a_00_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 Windows Management Service
		$a_00_3 = {50 00 72 00 6f 00 76 00 69 00 64 00 65 00 20 00 6d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 66 00 6f 00 72 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 } //1 Provide management service for system.
	condition:
		((#a_03_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=13
 
}
rule TrojanProxy_Win32_Wonknod_D_4{
	meta:
		description = "TrojanProxy:Win32/Wonknod.D,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 76 6d 78 } //1 \svcvmx
		$a_01_1 = {53 56 43 56 4d 58 7b 37 32 43 45 38 44 42 30 2d 36 45 42 36 2d 34 43 32 34 2d 39 32 45 38 2d 41 30 37 42 37 37 41 32 32 39 46 38 7d } //1 SVCVMX{72CE8DB0-6EB6-4C24-92E8-A07B77A229F8}
		$a_01_2 = {57 00 69 00 6e 00 4d 00 61 00 69 00 6e 00 7b 00 30 00 37 00 36 00 37 00 36 00 30 00 32 00 33 00 2d 00 31 00 32 00 43 00 43 00 2d 00 34 00 35 00 31 00 45 00 2d 00 41 00 33 00 37 00 42 00 2d 00 41 00 44 00 42 00 30 00 30 00 41 00 39 00 34 00 35 00 42 00 31 00 34 00 7d 00 } //1 WinMain{07676023-12CC-451E-A37B-ADB00A945B14}
		$a_01_3 = {64 00 61 00 74 00 61 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //1 dataup.exe
		$a_01_4 = {77 00 69 00 6e 00 76 00 6d 00 78 00 } //1 winvmx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}