
rule Ransom_Win32_EightLock_A{
	meta:
		description = "Ransom:Win32/EightLock.A,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {2e 00 38 00 6c 00 6f 00 63 00 6b 00 38 00 } //01 00  .8lock8
		$a_01_1 = {2a 00 2e 00 64 00 6f 00 63 00 78 00 } //02 00  *.docx
		$a_01_2 = {5c 00 52 00 45 00 41 00 44 00 5f 00 49 00 54 00 2e 00 74 00 78 00 74 00 } //04 00  \READ_IT.txt
		$a_01_3 = {63 3a 5c 55 73 65 72 73 5c 73 73 5c 44 65 73 6b 74 6f 70 5c 69 68 61 74 65 31 31 5c 69 68 61 74 65 31 31 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 69 68 61 74 65 31 31 2e 70 64 62 } //05 00  c:\Users\ss\Desktop\ihate11\ihate11\obj\Release\ihate11.pdb
		$a_01_4 = {63 00 6f 00 6e 00 74 00 61 00 63 00 74 00 20 00 62 00 79 00 20 00 65 00 2d 00 6d 00 61 00 69 00 6c 00 3a 00 20 00 64 00 31 00 64 00 38 00 31 00 32 00 33 00 38 00 40 00 74 00 75 00 74 00 61 00 2e 00 69 00 6f 00 20 00 20 00 6f 00 72 00 20 00 64 00 31 00 64 00 38 00 31 00 32 00 33 00 38 00 40 00 69 00 6e 00 64 00 69 00 61 00 2e 00 63 00 6f 00 6d 00 20 00 } //04 00  contact by e-mail: d1d81238@tuta.io  or d1d81238@india.com 
		$a_01_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 35 00 2e 00 31 00 2e 00 38 00 33 00 2e 00 31 00 38 00 32 00 3a 00 38 00 30 00 30 00 30 00 2f 00 63 00 67 00 69 00 2d 00 62 00 69 00 6e 00 2f 00 68 00 65 00 6c 00 6c 00 6f 00 2e 00 70 00 79 00 3f 00 } //02 00  http://5.1.83.182:8000/cgi-bin/hello.py?
		$a_01_6 = {74 00 6f 00 20 00 69 00 64 00 65 00 6e 00 74 00 69 00 66 00 79 00 20 00 2c 00 20 00 75 00 73 00 65 00 20 00 6c 00 6f 00 77 00 65 00 72 00 20 00 68 00 61 00 73 00 68 00 21 00 } //01 00  to identify , use lower hash!
		$a_01_7 = {43 72 79 70 74 6f 53 74 72 65 61 6d 4d 6f 64 65 } //00 00  CryptoStreamMode
		$a_00_8 = {5d 04 00 00 ce } //7d 03 
	condition:
		any of ($a_*)
 
}