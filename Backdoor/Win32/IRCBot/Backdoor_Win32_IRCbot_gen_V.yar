
rule Backdoor_Win32_IRCbot_gen_V{
	meta:
		description = "Backdoor:Win32/IRCbot.gen!V,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 0d 00 00 "
		
	strings :
		$a_01_0 = {8b 74 24 10 33 db 33 ed 3b f3 7e 58 81 fe 00 02 00 00 7d 50 69 f6 18 02 00 00 } //2
		$a_03_1 = {62 74 3e 8d 45 08 50 ff 15 90 01 04 83 f8 02 75 2f 90 00 } //2
		$a_03_2 = {55 30 04 3e 43 e8 90 01 04 3b d8 59 72 eb 90 00 } //2
		$a_03_3 = {7e 72 56 8d 45 90 01 01 6a 28 50 ff 75 90 01 01 89 75 90 01 01 89 5d 90 01 01 ff 75 90 01 01 ff 15 90 01 04 ff 75 90 01 01 ff 75 90 01 01 68 2d 10 00 00 ff 75 90 01 01 ff 15 90 00 } //2
		$a_01_4 = {8b 45 08 53 33 db 56 80 38 3a 57 89 4d fc 89 5d f4 0f 85 } //2
		$a_01_5 = {46 69 6c 65 20 64 6f 77 6e 6c 6f 61 64 3a 20 25 2e 31 66 4b 42 20 74 6f 3a 20 25 73 20 40 20 25 2e 31 66 4b 42 2f 73 65 63 2e } //1 File download: %.1fKB to: %s @ %.1fKB/sec.
		$a_01_6 = {4f 75 74 62 72 65 61 6b 20 50 72 69 76 61 74 65 20 46 6f 72 20 } //1 Outbreak Private For 
		$a_01_7 = {5b 61 75 74 6f 72 75 6e 5d } //1 [autorun]
		$a_01_8 = {49 6e 66 65 63 74 65 64 20 64 72 69 76 65 3a 20 25 73 } //1 Infected drive: %s
		$a_01_9 = {44 6f 6e 65 20 77 69 74 68 20 66 6c 6f 6f 64 20 28 25 69 4b 42 2f 73 65 63 29 2e 30 35 } //1 Done with flood (%iKB/sec).05
		$a_01_10 = {64 64 6f 73 69 6e 67 20 25 73 3a 25 73 2f 25 73 20 73 65 63 73 2e } //1 ddosing %s:%s/%s secs.
		$a_01_11 = {25 73 5c 72 65 6d 6f 76 65 4d 65 25 69 25 69 25 69 25 69 2e 62 61 74 } //1 %s\removeMe%i%i%i%i.bat
		$a_01_12 = {44 6f 77 6e 6c 6f 61 64 20 43 6f 6d 6d 61 6e 64 20 3d 20 25 73 20 5b 55 52 4c 5d 20 5b 4c 6f 63 61 74 69 6f 6e 5d } //1 Download Command = %s [URL] [Location]
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=6
 
}