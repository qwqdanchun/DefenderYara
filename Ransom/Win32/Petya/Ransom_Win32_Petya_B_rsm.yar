
rule Ransom_Win32_Petya_B_rsm{
	meta:
		description = "Ransom:Win32/Petya.B!rsm,SIGNATURE_TYPE_PEHSTR,04 00 04 00 09 00 00 04 00 "
		
	strings :
		$a_01_0 = {31 4d 7a 37 31 35 33 48 4d 75 78 58 54 75 52 32 52 31 74 37 38 6d 47 53 64 7a 61 41 74 4e 62 42 57 58 00 } //01 00 
		$a_01_1 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 } //01 00  \\.\PhysicalDrive
		$a_01_2 = {59 00 6f 00 75 00 72 00 20 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 20 00 6b 00 65 00 79 00 3a 00 0d 00 } //02 00 
		$a_01_3 = {2e 00 61 00 73 00 70 00 2e 00 61 00 73 00 70 00 78 00 2e 00 61 00 76 00 68 00 64 00 2e 00 62 00 61 00 63 00 6b 00 2e 00 62 00 61 00 6b 00 2e 00 63 00 2e 00 63 00 66 00 67 00 2e 00 63 00 6f 00 6e 00 66 00 2e 00 63 00 70 00 70 00 2e 00 63 00 73 00 2e 00 63 00 74 00 6c 00 2e 00 64 00 62 00 } //02 00  .asp.aspx.avhd.back.bak.c.cfg.conf.cpp.cs.ctl.db
		$a_01_4 = {25 00 73 00 20 00 2f 00 6e 00 6f 00 64 00 65 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 2f 00 75 00 73 00 65 00 72 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 2f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 00 00 70 00 72 00 6f 00 63 00 } //02 00 
		$a_01_5 = {66 00 73 00 75 00 74 00 69 00 6c 00 20 00 75 00 73 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 6a 00 6f 00 75 00 72 00 6e 00 61 00 6c 00 } //03 00  fsutil usn deletejournal
		$a_01_6 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 5c 00 22 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 25 00 73 00 5c 00 22 00 20 00 23 00 31 00 } //01 00  rundll32.exe \"C:\Windows\%s\" #1
		$a_01_7 = {70 65 72 66 63 2e 64 61 74 00 } //02 00 
		$a_01_8 = {53 00 59 00 53 00 54 00 45 00 4d 00 22 00 20 00 00 00 00 00 00 00 64 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 64 00 61 00 74 00 00 00 6e 74 } //00 00 
		$a_01_9 = {00 67 16 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Petya_B_rsm_2{
	meta:
		description = "Ransom:Win32/Petya.B!rsm!!Petya.gen!B,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 09 00 00 04 00 "
		
	strings :
		$a_00_0 = {31 4d 7a 37 31 35 33 48 4d 75 78 58 54 75 52 32 52 31 74 37 38 6d 47 53 64 7a 61 41 74 4e 62 42 57 58 00 } //01 00 
		$a_00_1 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 } //01 00  \\.\PhysicalDrive
		$a_00_2 = {59 00 6f 00 75 00 72 00 20 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 20 00 6b 00 65 00 79 00 3a 00 0d 00 } //02 00 
		$a_00_3 = {2e 00 61 00 73 00 70 00 2e 00 61 00 73 00 70 00 78 00 2e 00 61 00 76 00 68 00 64 00 2e 00 62 00 61 00 63 00 6b 00 2e 00 62 00 61 00 6b 00 2e 00 63 00 2e 00 63 00 66 00 67 00 2e 00 63 00 6f 00 6e 00 66 00 2e 00 63 00 70 00 70 00 2e 00 63 00 73 00 2e 00 63 00 74 00 6c 00 2e 00 64 00 62 00 } //02 00  .asp.aspx.avhd.back.bak.c.cfg.conf.cpp.cs.ctl.db
		$a_00_4 = {25 00 73 00 20 00 2f 00 6e 00 6f 00 64 00 65 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 2f 00 75 00 73 00 65 00 72 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 2f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 00 00 70 00 72 00 6f 00 63 00 } //02 00 
		$a_00_5 = {66 00 73 00 75 00 74 00 69 00 6c 00 20 00 75 00 73 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 6a 00 6f 00 75 00 72 00 6e 00 61 00 6c 00 } //03 00  fsutil usn deletejournal
		$a_00_6 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 5c 00 22 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 25 00 73 00 5c 00 22 00 20 00 23 00 31 00 } //01 00  rundll32.exe \"C:\Windows\%s\" #1
		$a_00_7 = {70 65 72 66 63 2e 64 61 74 00 } //02 00 
		$a_00_8 = {53 00 59 00 53 00 54 00 45 00 4d 00 22 00 20 00 00 00 00 00 00 00 64 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 64 00 61 00 74 00 00 00 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}