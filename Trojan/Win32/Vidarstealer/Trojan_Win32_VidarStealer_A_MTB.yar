
rule Trojan_Win32_VidarStealer_A_MTB{
	meta:
		description = "Trojan:Win32/VidarStealer.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {4c 70 43 6c 69 6a 74 51 37 4a 54 6a 49 37 36 6a 56 6d 39 57 7a 4d 49 74 48 6d 58 37 36 77 39 38 77 30 71 63 61 31 39 34 72 56 44 46 36 34 36 35 4e 4e 39 54 52 47 43 50 6d 79 46 59 47 56 50 47 } //2 LpClijtQ7JTjI76jVm9WzMItHmX76w98w0qca194rVDF6465NN9TRGCPmyFYGVPG
		$a_01_1 = {63 6e 56 33 75 59 50 30 64 4d 74 4a 63 52 2b 5a 51 46 33 48 79 68 37 63 4f 6a 33 32 42 4b 62 48 32 46 49 79 61 31 43 58 36 6a 74 4f 54 32 57 66 43 6e 6a 45 50 71 6f 59 43 47 48 7a 5a 69 6d 71 } //2 cnV3uYP0dMtJcR+ZQF3Hyh7cOj32BKbH2FIya1CX6jtOT2WfCnjEPqoYCGHzZimq
		$a_01_2 = {47 61 33 47 57 34 4b 75 62 73 4d 65 30 55 2b 7a 49 4e 56 71 31 70 52 70 4f 72 62 77 6f 31 36 7a 43 54 4a 65 54 43 73 41 50 61 35 50 31 70 56 5a 39 48 44 4b 70 79 4e 74 68 70 41 43 63 44 32 69 4e } //2 Ga3GW4KubsMe0U+zINVq1pRpOrbwo16zCTJeTCsAPa5P1pVZ9HDKpyNthpACcD2iN
		$a_01_3 = {46 67 34 47 70 67 55 6f 4f 71 5a 39 6d 35 47 65 37 76 68 78 37 65 32 42 4e 78 38 2b 47 45 4c 4e 6d 43 38 62 52 6a 2b 79 7a 43 76 52 46 4a 34 52 39 72 50 36 53 6a 36 32 58 79 52 78 43 6b 46 73 41 } //2 Fg4GpgUoOqZ9m5Ge7vhx7e2BNx8+GELNmC8bRj+yzCvRFJ4R9rP6Sj62XyRxCkFsA
		$a_01_4 = {4c 36 6d 59 4c 78 45 65 43 58 50 57 57 42 44 4d 39 35 34 48 78 58 50 74 72 4c 61 6d 36 62 6b 44 56 6c 4b 79 41 34 69 44 45 74 36 73 7a 45 4c 6f 51 46 59 72 71 58 56 4a 34 64 33 53 33 6a 49 44 } //2 L6mYLxEeCXPWWBDM954HxXPtrLam6bkDVlKyA4iDEt6szELoQFYrqXVJ4d3S3jID
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=10
 
}