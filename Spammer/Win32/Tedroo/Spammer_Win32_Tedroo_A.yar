
rule Spammer_Win32_Tedroo_A{
	meta:
		description = "Spammer:Win32/Tedroo.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 46 41 4b 45 5f 4e 41 4d 45 } //01 00  $FAKE_NAME
		$a_00_1 = {25 73 25 30 32 64 25 73 2e 25 75 2e 71 6d 61 69 6c 40 25 73 } //01 00  %s%02d%s.%u.qmail@%s
		$a_00_2 = {3c 65 6d 61 69 6c 73 3e } //01 00  <emails>
		$a_00_3 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c 25 73 3e } //01 00  MAIL FROM:<%s>
		$a_01_4 = {53 50 4d 5f 4e 45 54 } //01 00  SPM_NET
		$a_00_5 = {49 20 64 6f 6e 74 20 6e 65 65 64 20 79 6f 75 72 20 69 6e 74 65 72 65 73 74 20 69 6e 2e } //01 00  I dont need your interest in.
		$a_00_6 = {77 77 77 2e 6d 69 64 6c 65 6e 65 74 2e 6f 72 67 } //01 00  www.midlenet.org
		$a_00_7 = {73 5f 61 6c 69 76 65 2e 70 68 70 3f 69 64 3d 25 73 26 74 69 63 6b 3d 25 75 26 76 65 72 3d 25 73 26 73 6d 74 70 3d 25 73 } //01 00  s_alive.php?id=%s&tick=%u&ver=%s&smtp=%s
		$a_00_8 = {73 5f 72 65 70 6f 72 74 2e 70 68 70 3f 74 61 73 6b 3d 25 75 26 69 64 3d 25 73 } //01 00  s_report.php?task=%u&id=%s
		$a_00_9 = {72 00 30 00 30 00 74 00 65 00 64 00 5f 00 } //01 00  r00ted_
		$a_01_10 = {28 71 6d 61 69 6c 20 25 75 20 62 79 20 75 69 64 20 25 75 29 } //02 00  (qmail %u by uid %u)
		$a_03_11 = {83 c0 02 83 c4 1c 3d f7 03 00 00 a3 90 01 04 73 0a 81 05 90 01 04 f7 03 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}