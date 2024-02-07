
rule Backdoor_Linux_Gafgyt_Dj_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.Dj!xp,SIGNATURE_TYPE_ELFHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 70 72 6f 63 2f 63 70 75 69 6e 66 6f } //01 00  /proc/cpuinfo
		$a_00_1 = {47 41 59 46 47 54 } //01 00  GAYFGT
		$a_00_2 = {55 44 50 20 46 6c 6f 6f 64 69 6e 67 20 25 73 20 66 6f 72 20 25 64 20 73 65 63 6f 6e 64 73 } //01 00  UDP Flooding %s for %d seconds
		$a_00_3 = {48 54 54 50 20 46 6c 6f 6f 64 69 6e 67 20 25 73 20 66 6f 72 20 25 64 20 73 65 63 6f 6e 64 73 } //01 00  HTTP Flooding %s for %d seconds
		$a_00_4 = {54 43 50 20 46 6c 6f 6f 64 69 6e 67 20 25 73 20 66 6f 72 20 25 64 20 73 65 63 6f 6e 64 73 } //01 00  TCP Flooding %s for %d seconds
		$a_00_5 = {77 67 65 74 20 2d 4f 20 2f 74 6d 70 2f 66 66 66 } //01 00  wget -O /tmp/fff
		$a_00_6 = {73 65 6e 64 48 54 54 50 } //01 00  sendHTTP
		$a_00_7 = {73 65 6e 64 54 43 50 } //00 00  sendTCP
	condition:
		any of ($a_*)
 
}