
rule PWS_Win32_VB_CT{
	meta:
		description = "PWS:Win32/VB.CT,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 72 76 69 63 65 4d 61 6e 61 67 65 72 } //01 00  ServiceManager
		$a_01_1 = {50 61 73 73 77 6f 72 64 4d 61 69 6c 65 72 } //01 00  PasswordMailer
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_3 = {44 00 3a 00 5c 00 50 00 41 00 53 00 53 00 57 00 4f 00 7e 00 31 00 5c 00 50 00 41 00 53 00 53 00 57 00 4f 00 7e 00 31 00 2e 00 56 00 42 00 50 00 } //01 00  D:\PASSWO~1\PASSWO~1.VBP
		$a_01_4 = {43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 20 00 28 00 43 00 29 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 2e 00 } //00 00  Copyright (C) Microsoft Corp.
	condition:
		any of ($a_*)
 
}