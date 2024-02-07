
rule Backdoor_Win32_Codbot_BY{
	meta:
		description = "Backdoor:Win32/Codbot.BY,SIGNATURE_TYPE_PEHSTR,09 00 05 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 66 74 70 64 2e 73 74 61 74 75 73 } //01 00  .ftpd.status
		$a_01_1 = {2e 73 63 61 6e 2e 69 6e 66 65 63 74 65 64 } //01 00  .scan.infected
		$a_01_2 = {2e 62 6f 74 2e 73 79 73 69 6e 66 6f } //01 00  .bot.sysinfo
		$a_01_3 = {2e 62 6f 74 2e 69 70 } //01 00  .bot.ip
		$a_01_4 = {51 55 49 54 20 3a 67 6f 64 20 68 61 74 65 73 20 75 73 20 61 6c 6c } //01 00  QUIT :god hates us all
		$a_01_5 = {78 50 65 72 46 48 6d 6f 4e 78 } //01 00  xPerFHmoNx
		$a_01_6 = {6d 69 6e 64 6c 65 61 6b 2e 63 6f 6d } //01 00  mindleak.com
		$a_01_7 = {30 78 38 30 2e 6d 61 72 74 69 61 6e 73 6f 6e 67 2e 63 6f 6d } //01 00  0x80.martiansong.com
		$a_01_8 = {30 78 38 30 2e 6d 79 31 78 31 2e 63 6f 6d } //01 00  0x80.my1x1.com
		$a_01_9 = {30 78 38 30 2e 6f 6e 6c 69 6e 65 2d 73 6f 66 74 77 61 72 65 2e 6f 72 67 } //01 00  0x80.online-software.org
		$a_01_10 = {5c 00 43 00 24 00 5c 00 31 00 32 00 33 00 34 00 35 00 36 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 2e 00 64 00 6f 00 63 00 } //00 00  \C$\123456111111111111111.doc
	condition:
		any of ($a_*)
 
}