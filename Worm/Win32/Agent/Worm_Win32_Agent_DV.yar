
rule Worm_Win32_Agent_DV{
	meta:
		description = "Worm:Win32/Agent.DV,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 6c 40 00 8d 44 24 14 50 ff d6 6a 00 8d 4c 24 14 51 ff 15 98 60 40 00 68 70 6c 40 00 8d 54 24 14 52 ff d6 8d 84 24 18 01 00 00 50 8d 4c 24 14 51 ff d6 6a 00 68 80 00 00 00 6a 02 6a 00 6a 02 68 00 00 00 c0 8d 54 24 28 52 ff 15 10 61 40 00 83 f8 ff 74 15 6a 00 8d 4c 24 10 51 6a 0a 68 64 6c 40 00 } //01 00 
		$a_00_1 = {63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 63 74 66 6d 6f 6e 65 2e 65 78 65 } //01 00  c:\Program Files\ctfmone.exe
		$a_00_2 = {63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 63 74 66 6d 6f 6e 61 2e 65 78 65 } //01 00  c:\Program Files\ctfmona.exe
		$a_00_3 = {34 62 33 32 34 66 63 38 2d 31 36 37 30 2d 30 31 64 33 2d 31 32 37 38 2d 35 61 34 37 62 66 36 65 65 31 38 38 } //01 00  4b324fc8-1670-01d3-1278-5a47bf6ee188
		$a_00_4 = {72 69 73 69 6e 69 64 61 79 65 } //01 00  risinidaye
		$a_00_5 = {25 73 6d 64 6d 73 63 61 6e 25 64 2e 6c 6f 67 } //01 00  %smdmscan%d.log
		$a_00_6 = {5c 25 73 5c 70 69 70 65 5c 42 52 4f 57 53 45 52 } //01 00  \%s\pipe\BROWSER
		$a_00_7 = {53 65 6e 64 69 6e 67 20 70 61 79 6c 6f 61 64 32 2e 2e 2e 66 69 6e 69 73 68 } //01 00  Sending payload2...finish
		$a_00_8 = {53 65 6e 64 69 6e 67 20 70 61 79 6c 6f 61 64 31 2e 2e 2e 66 69 6e 69 73 68 } //00 00  Sending payload1...finish
	condition:
		any of ($a_*)
 
}