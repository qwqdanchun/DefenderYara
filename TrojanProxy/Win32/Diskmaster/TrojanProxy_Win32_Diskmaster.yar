
rule TrojanProxy_Win32_Diskmaster{
	meta:
		description = "TrojanProxy:Win32/Diskmaster,SIGNATURE_TYPE_PEHSTR,0d 00 0a 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 74 72 61 63 65 6c 6f 67 22 } //01 00  Content-Disposition: form-data; name="tracelog"
		$a_01_1 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 65 6d 61 69 6c 73 22 } //01 00  Content-Disposition: form-data; name="emails"
		$a_01_2 = {31 35 32 2e 32 2e 32 31 2e 31 } //01 00  152.2.21.1
		$a_01_3 = {32 30 39 2e 38 31 2e 37 2e 31 31 } //01 00  209.81.7.11
		$a_01_4 = {68 74 74 70 3a 2f 2f 25 64 2e 25 64 2e 25 64 2e 25 64 3a 25 64 2f } //01 00  http://%d.%d.%d.%d:%d/
		$a_01_5 = {21 53 4d 54 50 5f 53 54 41 52 54 5f 32 } //01 00  !SMTP_START_2
		$a_01_6 = {68 74 74 70 3a 2f 2f 25 64 2e 25 64 2e 25 64 2e 25 64 3a 25 64 2f 25 64 2f 25 64 2f 25 64 2f 25 64 2f 25 64 2f 25 64 2f } //01 00  http://%d.%d.%d.%d:%d/%d/%d/%d/%d/%d/%d/
		$a_01_7 = {58 2d 47 6f 6f 64 3a 20 25 64 3a 25 73 } //01 00  X-Good: %d:%s
		$a_01_8 = {21 53 4d 54 50 5f 53 45 4e 44 } //01 00  !SMTP_SEND
		$a_01_9 = {21 52 45 41 44 5f 45 52 52 4f 52 } //01 00  !READ_ERROR
		$a_01_10 = {46 6c 6f 70 70 79 20 4d 61 73 74 65 72 } //01 00  Floppy Master
		$a_01_11 = {54 48 52 45 41 44 53 3d } //01 00  THREADS=
		$a_01_12 = {25 48 3a 25 4d 3a 25 53 } //01 00  %H:%M:%S
		$a_01_13 = {58 2d 43 6f 6e 66 69 72 6d 3a 20 25 64 3a 25 73 } //01 00  X-Confirm: %d:%s
		$a_01_14 = {5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 } //01 00  \CurrentVersion\Internet Settings
		$a_01_15 = {4d 6f 7a 69 6c 6c 61 2f 25 64 2e 25 64 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 25 64 2e 25 64 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 25 64 2e 25 64 29 } //03 00  Mozilla/%d.%d (compatible; MSIE %d.%d; Windows NT %d.%d)
		$a_01_16 = {3b 50 a3 3c 8b 45 fc 83 c0 01 89 45 fc 8b 4d fc c7 04 8d } //00 00 
	condition:
		any of ($a_*)
 
}