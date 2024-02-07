
rule DDoS_Linux_Mirai_J_xp{
	meta:
		description = "DDoS:Linux/Mirai.J!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 75 73 72 2f 73 62 69 6e 2f 64 72 6f 70 62 65 61 72 } //01 00  /usr/sbin/dropbear
		$a_01_1 = {73 75 69 63 69 64 65 } //01 00  suicide
		$a_01_2 = {74 31 6e 6f 70 34 71 7a 62 33 35 75 61 63 32 79 76 72 30 78 77 73 } //01 00  t1nop4qzb35uac2yvr0xws
		$a_01_3 = {33 31 2e 32 30 32 2e 31 32 38 2e 38 30 } //01 00  31.202.128.80
		$a_01_4 = {55 73 61 67 65 3a 20 24 30 20 7b 73 74 61 72 74 7c 73 74 6f 70 7c 72 65 73 74 61 72 74 7d } //00 00  Usage: $0 {start|stop|restart}
		$a_00_5 = {5d 04 00 00 } //29 0d 
	condition:
		any of ($a_*)
 
}