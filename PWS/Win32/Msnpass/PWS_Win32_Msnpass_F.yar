
rule PWS_Win32_Msnpass_F{
	meta:
		description = "PWS:Win32/Msnpass.F,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 73 00 79 00 73 00 5c 00 6d 00 73 00 6e 00 6c 00 2e 00 74 00 78 00 74 00 } //01 00  c:\winsys\msnl.txt
		$a_01_1 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 73 00 79 00 73 00 5c 00 68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 5f 00 } //01 00  c:\winsys\hotmail_
		$a_01_2 = {31 00 37 00 33 00 2e 00 32 00 31 00 32 00 2e 00 32 00 33 00 38 00 2e 00 31 00 39 00 36 00 2f 00 6d 00 73 00 6e 00 2f 00 } //00 00  173.212.238.196/msn/
	condition:
		any of ($a_*)
 
}