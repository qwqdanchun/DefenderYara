
rule TrojanSpy_Win32_Bholog_B_gen{
	meta:
		description = "TrojanSpy:Win32/Bholog.B!gen,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 6a 70 67 } //01 00  .jpg
		$a_00_1 = {2e 00 6d 00 64 00 62 00 } //01 00  .mdb
		$a_00_2 = {73 65 6e 64 6d 65 79 61 72 } //01 00  sendmeyar
		$a_00_3 = {64 69 6b 68 61 6f } //01 00  dikhao
		$a_00_4 = {62 72 6f 64 61 } //01 00  broda
		$a_00_5 = {4d 6f 64 75 6c 65 31 6a } //01 00  Module1j
		$a_00_6 = {74 78 74 70 61 73 73 77 6f 72 64 } //01 00  txtpassword
		$a_00_7 = {4c 6f 67 69 6e 53 75 63 63 65 65 64 65 64 } //01 00  LoginSucceeded
		$a_00_8 = {50 43 3a 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b } //01 00  PC:&nbsp;&nbsp;&nbsp;
		$a_00_9 = {74 79 70 65 3d 22 73 75 62 6d 69 74 22 20 76 61 6c 75 65 3d 22 68 73 64 22 } //01 00  type="submit" value="hsd"
		$a_02_10 = {53 00 65 00 6c 00 65 00 63 00 74 00 90 02 20 2e 00 2a 00 90 02 10 46 00 72 00 6f 00 6d 00 90 00 } //00 00 
		$a_00_11 = {5d 04 00 00 6f 74 03 80 } //5c 21 
	condition:
		any of ($a_*)
 
}