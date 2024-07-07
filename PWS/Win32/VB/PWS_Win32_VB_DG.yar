
rule PWS_Win32_VB_DG{
	meta:
		description = "PWS:Win32/VB.DG,SIGNATURE_TYPE_PEHSTR,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 49 00 4d 00 56 00 55 00 5c 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 5c 00 } //1 Software\IMVU\password\
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 6c 00 6f 00 67 00 69 00 6e 00 73 00 } //1 SELECT * FROM logins
		$a_01_2 = {61 00 62 00 65 00 32 00 38 00 36 00 39 00 66 00 2d 00 39 00 62 00 34 00 37 00 2d 00 34 00 63 00 64 00 39 00 2d 00 61 00 33 00 35 00 38 00 2d 00 63 00 32 00 32 00 39 00 30 00 34 00 64 00 62 00 61 00 37 00 66 00 37 00 } //1 abe2869f-9b47-4cd9-a358-c22904dba7f7
		$a_01_3 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 20 00 66 00 72 00 6f 00 6d 00 20 00 6d 00 6f 00 7a 00 5f 00 6c 00 6f 00 67 00 69 00 6e 00 73 00 } //1 select *  from moz_logins
		$a_01_4 = {5c 00 4b 00 45 00 59 00 4c 00 4f 00 47 00 47 00 45 00 52 00 5c 00 } //1 \KEYLOGGER\
		$a_01_5 = {53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 4c 00 6f 00 67 00 } //1 Stealer Log
		$a_01_6 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //1 Microsoft\Security Center
		$a_01_7 = {55 00 41 00 43 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 4e 00 6f 00 74 00 69 00 66 00 79 00 } //1 UACDisableNotify
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}